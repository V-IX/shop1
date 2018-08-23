<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Catalog extends ADMIN_Controller {
	
	protected $model = '';
	protected $page = 'catalog';
	
	public function __construct ()
	{
		parent::__construct();
		$this->load->model('catalog_model');
		$this->model = $this->catalog_model;
	}
	
	public function index()
	{
		$this->init_admin($this->page);
		$data = $this->data;
		
		$count = $this->model->getCount();
		
		$items = $this->model->getItemsTree(false, false, 'num|DESC//title|ASC', array());
		
		//var_dump($items); die;
		
		$data['items'] = $items['tree'];
		
		
		$data['view'] = uri(2).'/index';
		$this->load->view('admin/common/template', $data);
	}
	
	public function create()
	{
		$this->load->library('upload', $this->model->configPhoto());
		
		$this->init_admin($this->page);
		$data = $this->data;
		
		$error = false;
		if($this->input->post() and $this->model->validate())
		{
			$error = $this->model->insert();
			if(!$error) redirect('/admin/'.uri(2));
		}
		
		$items = $this->model->getItemsTree(false, false, 'num|DESC//title|ASC', array());
		$data['parents'] = $items['tree'];
		
		$data['size'] = $this->model->thumbSize();
		
		$this->breadcrumbs->add('Добавить', '');
		
		//$this->load->helper('text');
		
		$data['_error'] = $error;
		$data['view'] = uri(2).'/create';
		$this->load->view('admin/common/template', $data);
	}
	
	public function edit()
	{
		$this->load->library('upload', $this->model->configPhoto());
		
		$this->init_admin($this->page);
		$data = $this->data;
		
		$error = false;
		if($this->input->post() and $this->model->validate())
		{
			$error = $this->model->update(uri(4));
			if(!$error) redirect('/admin/'.uri(2));
		}
		
		$data['item'] = $this->model->getItem(uri(4));
		if(empty($data['item']))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			redirect('admin/'.uri(2));
		}
		
		$items = $this->model->getItemsTree(false, false, 'num|DESC//title|ASC', array());
		$data['parents'] = $items['tree'];
		
		$data['size'] = $this->model->thumbSize();
		
		$this->breadcrumbs->add('Редактирование', '');
		
		$data['_error'] = $error;
		$data['view'] = uri(2).'/edit';
		$this->load->view('admin/common/template', $data);
	}
	
	public function view()
	{
		$this->init_admin($this->page);
		$data = $this->data;
		
		$data['item'] = $this->model->getItem(uri(4));
		if(empty($data['item']))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			redirect('admin/'.uri(2));
		}
		
		$this->breadcrumbs->add('Просмотр', '');
		
		$data['view'] = uri(2).'/view';
		$this->load->view('admin/common/template', $data);
	}
	
	public function fields()
	{
		$this->init_admin($this->page);
		$data = $this->data;
		
		$data['item'] = $this->model->getItem(uri(4));
		if(empty($data['item']))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			redirect('admin/'.uri(2));
		}
		
		$error = false;
		if($this->input->post())
		{
			$error = $this->model->fields(uri(4));
			if(!$error) redirect(current_url());
		}
		
		$this->load->model('fields_model');
		$data['fields'] = $this->fields_model->getTree();
		
		$this->breadcrumbs->add('Поля для фильтрации', '');
		
		$data['view'] = uri(2).'/fields';
		$this->load->view('admin/common/template', $data);
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
			$data = $this->model->ajaxDeleteImg(uri(4));
		}
		
		$this->output->set_output(json_encode($data));
	}
}
