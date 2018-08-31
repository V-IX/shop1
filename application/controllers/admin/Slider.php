<? if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class Slider
 * @property Slider_model $model
 */
class Slider extends ADMIN_Controller {
	private $page = 'slider';
	
	function __construct ()
	{	
		parent::__construct();

		$this->load->model('slider_model');
		$this->model = $this->slider_model;
	}
	
	public function index()
	{
		$this->init_admin($this->page);
		
		$count = $this->model->getCount();
		$pagination = admin_pagination(uri(2).'/index', $count);
		
		$this->data['items'] = $this->model->getItems($pagination['per_page'], $pagination['offset'], 'num|DESC', array());
		$this->load->library('pagination');
		$this->pagination->initialize($pagination);
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(2));
		
		$this->data['view'] = uri(2).'/index';
		$this->load->view('admin/common/template', $this->data);
	}

	public function create()
	{
		$this->load->library('upload', $this->model->configPhoto());
		
		$this->init_admin($this->page);
		
		if($this->input->post() and $this->model->validate())
		{
			$error = $this->model->insert();
			if(!$error) redirect('/admin/'.uri(2));
			$this->data['error'] = $error;
		}
		
		$this->data['size'] = $this->model->thumbSize();
		$this->data['mob'] = $this->model->thumbSize('mob');
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(2));
		$this->breadcrumbs->add('Добавить', '');
		
		$this->data['view'] = uri(2).'/create';
		$this->load->view('admin/common/template', $this->data);
	}

	public function edit()
	{
		$this->load->library('upload', $this->model->configPhoto());
		
		$this->init_admin($this->page);
		
		if($this->input->post() and $this->model->validate())
		{
			$error = $this->model->update(uri(4));
            if(!$error) {
                $redirect = uri(5) == 'close' ? '/admin/'.uri(2) : current_url();
                redirect($redirect);
            }
			$this->data['error'] = $error;
		}
		
		$this->data['item'] = $this->model->getItem('idItem', uri(4));
		if(empty($this->data['item']))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			redirect('admin/'.uri(2));
		}
		
		$this->data['size'] = $this->model->thumbSize();
		$this->data['mob'] = $this->model->thumbSize('mob');
		
		$this->breadcrumbs->add($this->data['pageinfo']['name'], uri(2));
		$this->breadcrumbs->add('Редактирование', '');
		
		$this->data['view'] = uri(2).'/edit';
		$this->load->view('admin/common/template', $this->data);
	}
	
	public function delete()
	{
		if($this->input->post()) $this->model->delete(uri(4));
		redirect('admin/'.uri(2));
	}

	public function ajaxDeleteImg()
	{
		$this->output->set_content_type('application/json');

		if($this->input->post()) {
			$this->data = $this->model->ajaxDeleteImg(uri(4));
		}

		$this->output->set_output(json_encode($this->data));
	}

}