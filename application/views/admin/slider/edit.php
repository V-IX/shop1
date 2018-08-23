<?=action_result('info', fa('info-circle mr5').' Размер слайда '.$size['x'].' х '.$size['y']);?>

<?=form_open_multipart('', array('class' => 'responsive-form'));?>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Заголовок <span class="required">*</span>
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="title" data-html="title" value="<?=set_value('title', $item['title'])?>" />
		<?=form_error('title'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Описание
	</div>
	<div class="col-9 form-colinput">
		<textarea class="form-input" name="text" data-html="text" rows="3"><?=set_value('text', $item['text']);?></textarea>
		<?=form_error('text'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Текст кнопки
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="btnText" data-html="btn" value="<?=set_value('btnText', $item['btnText'])?>" />
		<?=form_error('btnText'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Ссылка
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="link" value="<?=set_value('link', $item['link'])?>" />
		<?=form_error('link'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Номер по порядку
		<h6 class="form-info text-gray">На сайте выводится в обратном порядке</h6>
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="num" value="<?=set_value('num', $item['num'])?>" />
		<?=form_error('num'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Изображение
		<h6 class="form-info text-gray">Максимальный размер 2Mb</h6>
	</div>
	<div class="col-9 form-colinput">
		<div class="input-file">
			<input type="text" class="form-input" readonly placeholder="Файл не выбран" />
			<button class="btn">Обзор</button>
			<input type="file" name="img" id="upload-file" class="none _slide_img" accept="image/*" />
			<input type="hidden" name="oldImg" value="<?=$item['img'];?>" />
			<h6 class="form-info"><a href="javascript:void(0)" id="delImg">Удалить изображение</a></h6>
		</div>
		<?=$this->upload->display_errors('<div class="form-error">', '</div>');?>
		
	</div>
</div>
<div class="row form-group">
	<div class="col-3">
		Отображать на сайте
	</div>
	<div class="col-8">
		<input type="checkbox" name="visibility" <?=$item['visibility'] == 1 ? 'checked' : '';?> />
		<?=form_error('visibility'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3">
		Текст на слайде
	</div>
	<div class="col-8">
		<input type="checkbox" name="showText" data-check="stext" <?=$item['showText'] == 1 ? 'checked' : '';?> />
		<?=form_error('showText'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3">
		Кнопка на слайде
	</div>
	<div class="col-8">
		<input type="checkbox" name="showBtn" data-check="sbtn" <?=$item['showBtn'] == 1 ? 'checked' : '';?> />
		<?=form_error('showBtn'); ?>
	</div>
</div>

<hr class="mt30 mb20" />

<h3 class="mb30 text-info">Позиционирование</h3>

<? 
	$_title_def_size = 24;
	$_title_weight = 700;
	$_title_color = '000000';
	
	$_text_def_size = 16;
	$_text_weight = 500;
	$_text_color = '000000';
?>

<? $slide_css = json_decode($item['slide_css'], true);?>

<div class="row form-group">
	<div class="col-3 form-collabel">
		Ширина текста
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="slide_css[width]" data-css="width" data-target="#slideWrap" value="<?=set_value('slide_css[width]', $slide_css['width'])?>" />
		<?=form_error('slide_css[width]'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Положение слева
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="slide_css[left]" data-css="left" data-target="#slideWrap" value="<?=set_value('slide_css[left]', $slide_css['left'])?>" />
		<?=form_error('slide_css[left]'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Положение сверху
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="slide_css[top]" data-css="top" data-target="#slideWrap" value="<?=set_value('slide_css[top]', $slide_css['top'])?>" />
		<?=form_error('slide_css[top]'); ?>
	</div>
</div>

<hr class="mt30 mb20" />

<h3 class="mb30 text-info">Стили</h3>

<? $title_css = json_decode($item['title_css'], true);?>
<? $text_css = json_decode($item['text_css'], true);?>

<div class="row form-group">
	<div class="col-3 form-collabel">
		Заголовок
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input w50" name="title_css[font-size]" data-css="font-size" data-target="#slideTitle" value="<?=set_value('title_css[font-size]', $title_css['font-size'])?>" />
		<?=form_error('title_css[font-size]'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 mt5">
		Дополнительные возможности
	</div>
	<div class="col-9">
		<?
			$post = $this->input->post('title_css');
			
			$fw = $post['font-weight'];
			if($fw) $fw_active = $fw == $_title_weight ? '_active' : '';
			else $fw_active = $title_css['font-weight'] == $_title_weight ? '_active' : '';
			
			$fs = $post['font-style'];
			if($fs) $fs_active = $fs == 'italic' ? '_active' : '';
			else $fs_active = $title_css['font-style'] == 'italic' ? '_active' : '';
			
			$tt = $post['text-transform'];
			if($tt) $tt_active = $tt == 'uppercase' ? '_active' : '';
			else $tt_active = $title_css['text-transform'] == 'uppercase' ? '_active' : '';
		?>
	
		<div class="slide-squares">
			<span class="slide-square <?=$fw_active;?>" data-togglecss="font-weight" data-value="<?=$_title_weight;?>" data-default="400" data-target="#slideTitle"><?=fa('bold');?></span>
			<span class="slide-square <?=$fs_active;?>" data-togglecss="font-style" data-value="italic" data-default="normal" data-target="#slideTitle"><?=fa('italic');?></span>
			<span class="slide-square <?=$tt_active;?>" data-togglecss="text-transform" data-value="uppercase" data-default="none" data-target="#slideTitle"><?=fa('text-height');?></span>
			<span class="slide-square" id="color" style="background: #<?=set_value('title_css[color]', $title_css['color']);?>;"></span>
		</div>
		<input type="hidden" name="title_css[font-weight]" value="<?=set_value('title_css[font-weight]', $title_css['font-weight']);?>" />
		<input type="hidden" name="title_css[font-style]" value="<?=set_value('title_css[font-style]', $title_css['font-style']);?>" />
		<input type="hidden" name="title_css[text-transform]" value="<?=set_value('title_css[text-transform]', $title_css['text-transform']);?>" />
		<input type="hidden" name="title_css[color]" id="colorInput" value="<?=set_value('title_css[color]', $title_css['color']);?>" />
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Размер текста (px)
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input w50" name="text_css[font-size]" data-css="font-size" data-target="#slideText" value="<?=set_value('text_css[font-size]', $text_css['font-size'])?>" />
		<?=form_error('text_css[font-size]'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 mt5">
		Дополнительные возможности
	</div>
	<div class="col-9">
		<?
			$post = $this->input->post('text_css');
			
			$fw = $post['font-weight'];
			if($fw) $fw_active = $fw == $_text_weight ? '_active' : '';
			else $fw_active = $text_css['font-weight'] == $_text_weight ? '_active' : '';
			
			$fs = $post['font-style'];
			if($fs) $fs_active = $fs == 'italic' ? '_active' : '';
			else $fs_active = $text_css['font-style'] == 'italic' ? '_active' : '';
			
			$tt = $post['text-transform'];
			if($tt) $tt_active = $tt == 'uppercase' ? '_active' : '';
			else $tt_active = $text_css['text-transform'] == 'uppercase' ? '_active' : '';
		?>
		<div class="slide-squares">
			<span class="slide-square <?=$fw_active;?>" data-togglecss="font-weight" data-value="<?=$_text_weight;?>" data-default="400" data-target="#slideText"><?=fa('bold');?></span>
			<span class="slide-square <?=$fs_active;?>" data-togglecss="font-style" data-value="italic" data-default="normal" data-target="#slideText"><?=fa('italic');?></span>
			<span class="slide-square <?=$tt_active;?>" data-togglecss="text-transform" data-value="uppercase" data-default="none" data-target="#slideText"><?=fa('text-height');?></span>
			<span class="slide-square" id="color2" style="background: #<?=set_value('text_css[color]', $text_css['color']);?>;"></span>
		</div>
		
		<input type="hidden" name="text_css[font-weight]" value="<?=set_value('text_css[font-weight]', $text_css['font-weight']);?>" />
		<input type="hidden" name="text_css[font-style]" value="<?=set_value('text_css[font-style]', $text_css['font-style']);?>" />
		<input type="hidden" name="text_css[text-transform]" value="<?=set_value('text_css[text-transform]', $text_css['text-transform']);?>" />
		<input type="hidden" name="text_css[color]" id="colorInput2" value="<?=set_value('text_css[color]', $text_css['color']);?>" />
	</div>
</div>

<hr class="mt30 mb20" />

<?
	$slide_style = '';
	$slide_style .= 'width: '.set_value('slide_css[width]', $slide_css['width']).'px; ';
	$slide_style .= 'left: '.set_value('slide_css[left]', $slide_css['left']).'px; ';
	$slide_style .= 'top: '.set_value('slide_css[top]', $slide_css['top']).'px; ';
	
	$title_style = '';
	$title_style .= 'font-size: '.set_value('title_css[font-size]', $title_css['font-size']).'px; ';
	$title_style .= 'font-weight: '.set_value('title_css[font-weight]', $title_css['font-weight']).'; ';
	$title_style .= 'font-style: '.set_value('title_css[font-style]', $title_css['font-style']).'; ';
	$title_style .= 'text-transform: '.set_value('title_css[text-transform]', $title_css['text-transform']).'; ';
	$title_style .= 'color: #'.set_value('title_css[color]', $title_css['color']).'; ';
	
	$text_style = '';
	$text_style .= 'font-size: '.set_value('text_css[font-size]', $text_css['font-size']).'px; ';
	$text_style .= 'font-weight: '.set_value('text_css[font-weight]', $text_css['font-weight']).'; ';
	$text_style .= 'font-style: '.set_value('text_css[font-style]', $text_css['font-style']).'; ';
	$text_style .= 'text-transform: '.set_value('text_css[text-transform]', $text_css['text-transform']).'; ';
	$text_style .= 'color: #'.set_value('text_css[color]', $text_css['color']).'; ';
?>

<div class="slide-wrap mb30">
	<div class="slide" style="background-image: url('<?=base_url('assets/uploads/slider/'.$item['img']);?>');">
		<div class="wrapper">
			<div class="scontent" id="slideWrap" style="<?=$slide_style;?>">
				<div class="stext">
					<div class="title" id="slideTitle" style="<?=$title_style;?>"><?=set_value('title', $item['title'])?></div>
					<div class="text" id="slideText" style="<?=$text_style;?>"><?=nl2br(set_value('text', $item['text']));?></div>
				</div>
				<div class="sbtn">
					<a href="javascript:void(0)" class="btn"><?=set_value('btnText', $item['btnText'])?></a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-actions">
	<button class="btn btn-success">Редактировать</button>
	<?=anchor('/admin/'.$this->uri->segment(2), 'Вернуться назад', array('class' => 'btn'));?>
</div>
<?=form_close();?>

<script>
	$('#delImg').click(function(){
		$(this).closest('.input-file').find('input').val("");
		$('.slide').css({'background-image' : 'none'});
	});
</script>

<? // FOR SLIDER ?>

<?=link_tag('assets/plugins/font-ubuntu/font.css');?>

<?=link_tag('assets/plugins/slider-editor/slider.css');?>
<?=script('assets/plugins/slider-editor/slider.js');?>

<?=link_tag('assets/plugins/colorpicker/css/colorpicker.css');?>
<?=script('assets/plugins/colorpicker/js/colorpicker.js');?>

<script>
	$('#color').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$('[name="slide_css[color]"]').val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor($('[name="slide_css[color]"]').val());
			$('.scontent').css('color', '#' + $('[name="slide_css[color]"]').val());
			$('#color').css('backgroundColor', '#' + $('[name="slide_css[color]"]').val());
		},
		onChange: function (hsb, hex, rgb) {
			$('#color').css('backgroundColor', '#' + hex);
			$('[name="slide_css[color]"]').val(hex);
			$('.scontent').css('color', '#' + hex);
		}
	});
	
	$('#color2').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$('[name="text_css[color]"]').val(hex);
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor($('[name="text_css[color]"]').val());
			$('#slideText').css('color', '#' + $('[name="text_css[color]"]').val());
			$('#color2').css('backgroundColor', '#' + $('[name="text_css[color]"]').val());
		},
		onChange: function (hsb, hex, rgb) {
			$('#color2').css('backgroundColor', '#' + hex);
			$('[name="text_css[color]"]').val(hex);
			$('#slideText').css('color', '#' + hex);
		}
	});
</script>