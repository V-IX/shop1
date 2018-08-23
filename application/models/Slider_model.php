<? class Slider_model extends CI_Model {

	protected $_folder = 'slider';
	protected $_table = 'slider';
	
    public function __construct()
    {
        parent::__construct();
    }
    
    public function getItems($limit = false, $offset = false, $order = false, $params = array())
	{
		$items = $this->query->items($this->_table, $limit, $offset, $order, $params);
		return $items;
	}
	
	public function getItem($id, $alias = false, $params = array())
	{
		if($alias) $params['alias'] = $id;
		else $params['idItem'] = $id;
		
		$item = $this->query->item($this->_table, $params);
		return $item;
	}
	
	/* WORK WITH UPDATE */
	
	public function post()
	{
		$return = $this->input->post();
		if(array_key_exists('csrf_test_name', $return)) unset($return['csrf_test_name']);
		
		if(array_key_exists('visibility', $return)) $return['visibility'] = $return['visibility'] ? 1 : 0;
		else $return['visibility'] = 0;
		
		if(array_key_exists('showText', $return)) $return['showText'] = $return['showText'] ? 1 : 0;
		else $return['showText'] = 0;
		
		if(array_key_exists('showBtn', $return)) $return['showBtn'] = $return['showBtn'] ? 1 : 0;
		else $return['showBtn'] = 0;
		
		
		if(array_key_exists('slide_css', $return)) $return['slide_css'] = json_encode($return['slide_css']);
		if(array_key_exists('title_css', $return)) $return['title_css'] = json_encode($return['title_css']);
		if(array_key_exists('text_css', $return)) $return['text_css'] = json_encode($return['text_css']);
		
		
		return $return;
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
		
		$error = $this->query->insert($this->_table, $insert);
		if($error)
		{
			if(isset($insert['img'])) $this->deletephoto($insert['img']);
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
		
		if($_FILES['img']['name'] != '')
		{
			$img = $this->loadphoto('img');
			if(!$img) return action_result('error', fa('warning mr5').' Ошибка загрузки изображения!', true);
			else $insert['img'] = $img;
		}
		
		$error = $this->query->update($this->_table, $insert, array('idItem' => $id));
		if($error)
		{
			if(isset($insert['img'])) $this->deletephoto($insert['img']);
			return $error;
		} else {
			if(isset($insert['img']) and isset($oldImg)) $this->deletephoto($oldImg);
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
		
		$item = $this->getItem($id);
		if(empty($item))
		{
			set_flash('result', action_result('error', fa('warning mr5').' Запись не найдена!', true));
			return true;
		}
		
		$error = $this->query->delete($this->_table, array('idItem' => $id));
		if(!$error)
		{
			if(isset($item['img'])) $this->deletephoto($item['img']);
			
			set_flash('result', action_result('success', fa('trash mr5').' Запись <span class="medium">"'.$item['title'].'"</span> успешно удалена!', true));
			return false;
		} else {
			set_flash('result', $error);
			return true;
		}
	}
	
	# COUNT
	
	public function getCount($params = array())
	{
		$this->where($params);
		return $this->db->count_all_results($this->_table);
	}
	
	public function where($params = array())
	{
		if(is_array($params) and !empty($params)) foreach($params as $k => $v) $this->db->where($k, $v);
	}
	
	# VALIDATE
	
	public function validate()
	{
		$rules = array(
			array(
				'field' => 'title',
				'label' => 'Заголовок',
				'rules'   => 'trim|required'
			),
			array(
				'field' => 'text',
				'label' => 'Описание',
				'rules'   => 'trim'
			),
			array(
				'field' => 'btnText',
				'label' => 'Текст кнопки',
				'rules'   => 'trim'
			),
			array(
				'field' => 'num',
				'label' => 'Номер по порядку',
				'rules'   => 'integer'
			),
			array(
				'field' => 'link',
				'label' => 'Ссылка',
				'rules'   => 'trim'
			),
			array(
				'field' => 'slide_css[width]',
				'label' => 'Ширина текста',
				'rules'   => 'trim|integer'
			),
			array(
				'field' => 'slide_css[left]',
				'label' => 'Положение слева',
				'rules'   => 'trim|integer'
			),
			array(
				'field' => 'slide_css[top]',
				'label' => 'Положение сверху',
				'rules'   => 'trim|integer'
			),
			array(
				'field' => 'slide_css[color]',
				'label' => 'Цвет текста',
				'rules'   => 'trim'
			),
			array(
				'field' => 'title_css[font-size]',
				'label' => 'Размер заголовка',
				'rules'   => 'trim'
			),
			array(
				'field' => 'title_css[font-weight]',
				'label' => 'Толщина заголовка',
				'rules'   => 'trim'
			),
			array(
				'field' => 'title_css[font-style]',
				'label' => 'Стиль заголовка',
				'rules'   => 'trim'
			),
			array(
				'field' => 'title_css[text-transform]',
				'label' => 'Трансформирование заголовка',
				'rules'   => 'trim'
			),
			array(
				'field' => 'text_css[font-size]',
				'label' => 'Размер описание',
				'rules'   => 'trim'
			),
			array(
				'field' => 'text_css[font-weight]',
				'label' => 'Толщина описание',
				'rules'   => 'trim'
			),
			array(
				'field' => 'text_css[font-style]',
				'label' => 'Стиль описание',
				'rules'   => 'trim'
			),
			array(
				'field' => 'text_css[text-transform]',
				'label' => 'Трансформирование описание',
				'rules'   => 'trim'
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
		$config['upload_path'] = './assets/uploads/'.$this->_folder.'/';
		$config['allowed_types'] = 'gif|jpg|png|jpeg';
		$config['max_size'] = 2048;
		$config['encrypt_name'] = true;
		$config['remove_spaces'] = false;
		$congig['overwrite'] = true;
		return $config;
	}
	
	public function thumbSize($axis = false)
	{		
		$return = array(
			'x' => 660,
			'y' => 350,
		);
		
		if($axis !== false) return $return[$axis];
		else return $return;
	}
	
	public function loadphoto()
	{
		
		$this->load->helper('file');
		if ($this->upload->do_upload('img')) {
			$img = $this->upload->data();
			$this->load->library('SimpleImage');
			$size = $this->thumbSize();
			$this->simpleimage->load('assets/uploads/'.$this->_folder.'/'.$img['file_name'])->thumbnail($size['x'], $size['y'])->save('assets/uploads/'.$this->_folder.'/'.$img['file_name']);
			$this->simpleimage->load('assets/uploads/'.$this->_folder.'/'.$img['file_name'])->thumbnail(300, 200)->save('assets/uploads/'.$this->_folder.'/thumb/'.$img['file_name']);
			$file = $img['file_name'];
			return $file;
		} else {
			$this->session->set_flashdata('img', $this->upload->display_errors('<div class="form-error">', '</div>'));
			return false;
		}		
	}
	
	public function deletephoto($file)
	{
		$paths = array(
			'/assets/uploads/'.$this->_folder.'/'.$file,
			'/assets/uploads/'.$this->_folder.'/thumb/'.$file,
			'/assets/uploads/'.$this->_folder.'/small/'.$file,
		);
		
		foreach($paths as $path)
		{
			if(file_exists('.'.$path) and !is_dir('.'.$path)) unlink('.'.$path);
		}
		return false;
	}
	

} ?>