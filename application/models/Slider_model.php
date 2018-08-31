<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Class Slider_model
 * @property CI_Upload $upload
 * @property SimpleImage $simpleimage
 */
class Slider_model extends CI_Model {

	private $_folder = 'slider';
	private $_table = 'slider';

	public function getItems($limit = false, $offset = false, $order = false, $params = array())
	{
		return $this->query->items($this->_table, $limit, $offset, $order, $params);
	}

	public function getItem($field, $value = null)
	{
		if(!is_array($field)) $params[$field] = $value;
		else $params = $field;

		return $this->query->item($this->_table, $params);
	}

	public function getCount($params = array())
	{
		return $this->query->items_count($this->_table, $params);
	}

	public function insert()
	{
		$insert = $this->post();

		if($_FILES['img']['name'] != '')
		{
			$img = $this->loadphoto('img');
			if(!$img) return action_result('error', fa('warning mr5').' Ошибка загрузки изображения!', true);
			else $insert['img'] = $img;
		}
		if($_FILES['mob']['name'] != '')
		{
			$mob = $this->loadphoto('mob', 'mob');
			if(!$mob) return action_result('error', fa('warning mr5').' Ошибка загрузки мобильного изображения!', true);
			else $insert['mob'] = $mob;
		}

		$error = $this->query->insert($this->_table, $insert);
		if($error)
		{
			if(isset($insert['img'])) $this->deletephoto($insert['img']);
			if(isset($insert['mob'])) $this->deletephoto($insert['mob']);
			return $error;
		} else {
			set_flash('result', action_result('success', fa('check mr5').' Запись <span class="medium">"'.$insert['title'].'"</span> успешно создана!', true));
			return false;
		}
	}

	public function update($id)
	{
		$insert = $this->post();

		if(array_key_exists('oldImg', $insert))
		{
			$oldImg = $insert['oldImg'];
			unset($insert['oldImg']);
		}
		if(array_key_exists('oldMob', $insert))
		{
			$oldMob = $insert['oldMob'];
			unset($insert['oldMob']);
		}

		if($_FILES['img']['name'] != '')
		{
			$img = $this->loadphoto('img');
			if(!$img) return action_result('error', fa('warning mr5').' Ошибка загрузки изображения!', true);
			else $insert['img'] = $img;
		}
		if($_FILES['mob']['name'] != '')
		{
			$mob = $this->loadphoto('mob', 'mob');
			if(!$mob) return action_result('error', fa('warning mr5').' Ошибка загрузки мобильного изображения!', true);
			else $insert['mob'] = $mob;
		}

		$error = $this->query->update($this->_table, $insert, array('idItem' => $id));
		if($error)
		{
			if(isset($insert['img'])) $this->deletephoto($insert['img']);
			if(isset($insert['mob'])) $this->deletephoto($insert['mob']);
			return $error;
		} else {
			if(isset($insert['img']) and isset($oldImg)) $this->deletephoto($oldImg);
			if(isset($insert['mob']) and isset($oldMob)) $this->deletephoto($oldMob);
			set_flash('result', action_result('success', fa('check mr5').' Запись <span class="medium">"'.$insert['title'].'"</span> успешно обновлена!', true));
			return false;
		}
	}

	public function delete($id)
	{
		$insert = $this->post();
		if($insert['delete'] != 'delete')
		{
			set_flash('result', action_result('error', fa('warning mr5').' Ошибка данных POST!', true));
			return true;
		}

		$item = $this->getItem('idItem', $id);
		if(empty($item))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			return true;
		}

		$error = $this->query->delete($this->_table, array('idItem' => $id));
		if(!$error)
		{
			if(isset($item['img'])) $this->deletephoto($item['img']);
			if(isset($item['mob'])) $this->deletephoto($item['mob']);

			set_flash('result', action_result('success', fa('trash mr5').' Запись <span class="medium">"'.$item['title'].'"</span> успешно удалена!', true));
			return false;
		} else {
			set_flash('result', $error);
			return true;
		}
	}

    public function ajaxDeleteImg($id)
    {
        $insert = $this->post();
        if($insert['delete_img'] != 'delete' or !$this->input->post('name'))
        {
            return array('error' => true, 'text' => 'Ошибка данных POST');
        }

        $item = $this->getItem('idItem', $id);
        if(empty($item))
        {
            return array('error' => true, 'text' => 'Запись не найдена');
        }

		$name = $insert['name'];

        $error = $this->query->update($this->_table, array($name => null), array('idItem' => $id));
        if(!$error)
        {
            if(isset($item[$name])) $this->deletephoto($item[$name]);
            return array('error' => false, 'text' => 'Запись успешно удалена');
        } else {
            return array('error' => true, 'text' => 'Ошибка сервера');
        }
    }

	# HELPER

	public function post()
	{
		$return = $this->input->post();
		if(array_key_exists('csrf_test_name', $return)) unset($return['csrf_test_name']);

		if(array_key_exists('visibility', $return)) $return['visibility'] = $return['visibility'] ? 1 : 0;
		else $return['visibility'] = 0;

		if(array_key_exists('showText', $return)) $return['showText'] = $return['showText'] ? 1 : 0;
		else $return['showText'] = 0;

		return $return;
	}

	# VALIDATE

	public function validate()
	{
		$rules = array(
			array(
				'field' => 'title',
				'label' => 'Заголовок',
				'rules'   => 'trim|required|max_length[255]',
			),
			array(
				'field' => 'link',
				'label' => 'Ссылка',
				'rules'   => 'trim',
			),
			array(
				'field' => 'text',
				'label' => 'Текст',
				'rules'   => 'trim',
			),
			array(
				'field' => 'num',
				'label' => 'Номер по порядку',
				'rules'   => 'trim|integer',
			),
		);

		$this->load->library('form_validation');
		$this->form_validation->set_error_delimiters('<div class="form-error">', '</div>');
		$this->form_validation->set_rules($rules);
		return $this->form_validation->run();
	}

	# LOAD IMAGE

	public function configPhoto()
	{
		$this->load->library('SimpleImage');
		$config['upload_path'] = './assets/uploads/'.$this->_folder.'/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size'] = 2048;
		$config['encrypt_name'] = true;
		$config['remove_spaces'] = false;
		$config['overwrite'] = true;
		return $config;
	}

	public function thumbSize($type = 'img', $axis = false)
	{
		$sizes = array(
			'img' => array('x' => 632, 'y' => 400),
			'mob' => array('x' => 500, 'y' => 300),
		);

		$return = $sizes[$type];

		if($axis !== false) return $return[$axis];
		else return $return;
	}

	public function loadphoto($img, $type = 'img')
	{
		$this->load->helper('file');
		if($this->upload->do_upload($img)) {
			$img = $this->upload->data();
			$file = $img['file_name'];

			$size = $this->thumbSize($type);
			$folder = $type == 'mob' ? 'mobile' : 'thumb';
			$this->simpleimage->load('assets/uploads/'.$this->_folder.'/'.$img['file_name'])->thumbnail($size['x'], $size['y'])->save('assets/uploads/'.$this->_folder.'/'.$folder.'/'.$img['file_name']);

			return $file;
		} else {
			return false;
		}
	}

	public function deletephoto($file)
	{
		$paths = array(
			'/assets/uploads/'.$this->_folder.'/'.$file,
			'/assets/uploads/'.$this->_folder.'/thumb/'.$file,
			'/assets/uploads/'.$this->_folder.'/mobile/'.$file,
		);
		deletefile($paths);
	}
}
