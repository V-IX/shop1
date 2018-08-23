<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Catalog extends SITE_Controller {
	
	protected $model = '';
	protected $page = 'catalog';
	protected $seg_cur = 'catalog';
	protected $seg_cnt = 1;
	
	public function __construct ()
	{
		parent::__construct();
		$this->load->model('catalog_model');
		$this->model = $this->catalog_model;
		$this->load->model('products_model');
		
		$this->load->model('banners_model');
		$this->data['banners'] = $this->banners_model->getItems(false, false, false, array('visibility' => 1), array('catalog_left', 'catalog_top', 'catalog_bottom'));

  
	}

    function _remap ($method, $params = array())
    {
        if(uri(2) == 'ajaxProduct')
		{
			$this->ajaxProduct();
			return;
		}	
		
		$segments = $this->uri->segment_array();
		$this->seg_cnt = count($segments);
		$this->seg_cur = $segments[$this->seg_cnt];
		
		if(strpos($this->seg_cur, 'page-') !== false)
		{
			$this->seg_cnt = $this->seg_cnt - 1;
			$this->seg_cur = $segments[$this->seg_cnt];
		}
		
		
		if($this->seg_cur == 'catalog' or $this->seg_cur == 'index')
		{
			$this->index();
		} else {
			$isItem = $this->products_model->getItem($this->seg_cur, true);
			if ($isItem) $this->product_view();
			else $this->$method();
        }
    }
	
	public function index()
	{
		$this->init_site($this->page);
		
		$tree = $this->model->getItemsTree(false, false, 'num|DESC', array('visibility' => 1));
		
        $this->data['paths'] = $tree['paths'];
        
        $this->data['navs'] = $tree['tree'];
		$this->data['navs_curr'] = 0;
		
		$params = array('visibility' => 1);
		$count = $this->products_model->getCount($params);
		$pagination = site_pagination(uri(1).'/index', $count, $this->data['siteinfo']['count_front']);
		
        $this->data['products'] = $this->products_model->getItems($pagination['per_page'], $pagination['offset'], 'num|DESC//title|ASC', $params);

        $this->data['count'] = $count;
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], 'catalog');
		
		$this->load->library('pagination');
		$this->pagination->initialize($pagination);
		$this->data['show_tmenu'] = false;
		
		$this->site_seo();
		$this->data['view'] = 'shop/catalog';
		$this->load->view('site/common/template', $this->data);
	}
	
	public function view()
	{
		$this->init_site($this->page);
		$data = $this->data;

		//**********
        $segments = $this->uri->segment_array();
		
		$item = $this->model->getItem($this->seg_cur, true, array('visibility' => 1));
		
		if(empty($item)) redirect(uri(1));
		$this->data['item'] = $item;
		
		$tree = $this->model->getItemsTree(false, false, 'num|DESC', array('visibility' => 1), $item['idItem']);
        
        $this->data['paths'] = $tree['paths'];

		$this->data['navs'] = $tree['tree'];
		$this->data['navs_curr'] = 0;
		
		$sort = $this->input->get('sort') ? 'shop_products.'.$this->input->get('sort') : 'shop_products.num|DESC//shop_products.title|ASC';
		$count = $this->products_model->getCountByCatalog($item['idItem'], 12);
		$pagination = site_pagination(
				uri(1).'/'.$this->data['paths'][$item['idItem']],
				$count,
				$this->data['siteinfo']['count_front'],
				$this->seg_cnt + 1
		);
		$this->data['products'] = $this->products_model->getItemsByCatalog($item['idItem'], $pagination['per_page'], $pagination['offset'], $sort);
        $this->data['count'] = $count;
		
		$fields = json_decode($item['fields'], true);
		$fields = is_array($fields) ? $fields : array();
		$this->load->model('fields_model');
		$this->data['fields'] = $this->fields_model->getItemsByArr($fields);
		
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], 'catalog');
		foreach($tree['breadcrumbs'] as $br) $this->breadcrumbs->add($br['title'], 'catalog/'.$br['alias']);
		$this->data['show_tmenu'] = false;
		
		$pagination['prefix'] = 'page-';
		$this->load->library('pagination');
		$this->pagination->initialize($pagination);
		
		$this->site_seo();
		$this->data['view'] = 'shop/catalog';
		$this->load->view('site/common/template', $this->data);
	}
    
	
    
	public function product_view()
	{
		
        
        $segments = $this->uri->segment_array();
		
        $this->model = $this->products_model;
        
		$this->init_site($this->page);
		
		$item = $this->model->getItem($segments[count($segments)], true, array('visibility' => 1));
		
        if(empty($item)) redirect(uri(1));
		$this->data['item'] = $item;
				
		$navs_curr = 0;
                
		if(!empty($item)) $navs_curr = $item['idParent'];
        
		$tree = $this->catalog_model->getItemsTree(false, false, 'num|DESC', array('visibility' => 1), $navs_curr); 
      
		$this->data['paths'] = $tree['paths'];
        
		/* get extra */
		$this->data['imgs'] = $this->model->getImgs(false, false, false, array('idParent' => $item['idItem']));
		$this->data['mods'] = $this->model->getModifications(array('idParent' => $item['idItem']));
		$this->data['descrs'] = $this->model->getDescriptions(array('idParent' => $item['idItem']));
		$this->data['similars'] = $this->model->getSimilars($item['idItem'], array('shop_products.visibility' => 1));
		$this->data['associated'] = $this->model->getItemsByCatalog($navs_curr, 10, false, 'shop_products.num|RANDOM', array('shop_products.idItem !=' => $item['idItem']));
		$this->data['articles'] = $this->model->getArticles($item['idItem'], array('articles.visibility' => 1));
		
		$this->load->model('mfrs_model');
		$this->data['mfrs'] = $this->mfrs_model->getItem($item['idMfrs']);
		
		$this->load->model('units_model');
		$this->data['p_currency'] = $this->units_model->itemCurrency($item['currency']);
		
		$this->load->model('comments_model');
		$this->data['comments'] = $this->comments_model->getItems(false, false, 'addDate|DESC', array('visibility' => 1, 'idParent' => $item['idItem']));
		
      //  var_dump ($this->data);
        
		
		//$this->breadcrumbs->add($this->data['pageinfo']['name'], 'catalog');
		foreach($tree['breadcrumbs'] as $br) $this->breadcrumbs->add($br['title'], 'catalog/'.$br['alias']);
		$this->breadcrumbs->add($item['title'], uri(1));
		
		$this->site_seo();
		$this->data['view'] = 'shop/product';
		$this->load->view('site/common/template', $this->data);
	}
    
}
