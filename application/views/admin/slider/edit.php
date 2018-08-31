<?=form_open_multipart('', array('class' => 'responsive-form', 'id'=>'mainForm'));?>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Заголовок <span class="required">*</span>
	</div>
	<div class="col-9 form-colinput">
		<textarea class="form-input" name="title" rows="3"><?=set_value('title', $item['title']);?></textarea>
		<?=form_error('title'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Описание
	</div>
	<div class="col-9 form-colinput">
		<textarea class="form-input" name="text" rows="3"><?=set_value('text', $item['text']);?></textarea>
		<?=form_error('text'); ?>
	</div>
</div>

<hr class="mb25" />

<div class="row form-group">
	<div class="col-3 form-collabel">
		Текст кнопки
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="btnLabel" value="<?=set_value('btnLabel', $item['btnLabel'])?>" />
		<?=form_error('btnLabel'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Ссылка
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="btnLink" value="<?=set_value('btnLink', $item['btnLink'])?>" />
		<?=form_error('btnLink'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Текст кнопки 2
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="btn2Label" value="<?=set_value('btn2Label', $item['btn2Label'])?>" />
		<?=form_error('btn2Label'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Ссылка 2
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="btn2Link" value="<?=set_value('btn2Link', $item['btn2Link'])?>" />
		<?=form_error('btn2Link'); ?>
	</div>
</div>

<hr class="mb25" />

<? $aligns = array('left' => 'По левому краю', 'center' => 'По центру', 'right' => 'По правому краю',);?>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Выравнивание
	</div>
	<div class="col-9 form-colinput">
		<select name="position" class="form-input">
		<? foreach($aligns as $value => $label) { ?>
			<option value="<?=$value;?>" <?=set_select('position', $value, $item['position'] == $value ? true : false);?>><?=$label;?></option>
		<? } ?>
		</select>
		<?=form_error('position'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Изображение:
		<div class="h6 text-gray">Рекомендуемый размер не меньше <?=$size['x'];?>х<?=$size['y'];?>рх</div>
	</div>
	<div class="col-9 form-colinput">
		<div class="input-file">
			<input type="text" class="form-input" readonly placeholder="Файл не выбран" />
			<button class="btn">Обзор</button>
			<input type="file" name="img" class="none" accept="image/*"/>
			<input type="hidden" name="oldImg" value="<?=$item['img'];?>" />
			<h6 class="form-info"><a href="javascript:void(0)" data-toggle="clearFile">очистить</a></h6>
		</div>
		<?=$this->upload->display_errors('<div class="form-error">', '</div>');?>
		<? if($item['img']) { ?>
			<div class="img">
				<?=check_img('assets/uploads/'.$folder.'/thumb/'.$item['img'], array('class' => 'block mt20', 'style' => 'max-width: 100px;'));?>
				<div class="mt5 form-info"><a href="javascript:void(0)" data-toggle="removeImg" data-remove="img">Удалить изображение</a></div>
			</div>
		<? } ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Мобильное изображение:
		<div class="h6 text-gray">Рекомендуемый размер не меньше <?=$mob['x'];?>х<?=$mob['y'];?>рх</div>
	</div>
	<div class="col-9 form-colinput">
		<div class="input-file">
			<input type="text" class="form-input" readonly placeholder="Файл не выбран" />
			<button class="btn">Обзор</button>
			<input type="file" name="mob" class="none" accept="image/*"/>
			<input type="hidden" name="oldMob" value="<?=$item['mob'];?>" />
			<h6 class="form-info"><a href="javascript:void(0)" data-toggle="clearFile">очистить</a></h6>
		</div>
		<?=$this->upload->display_errors('<div class="form-error">', '</div>');?>
		<? if($item['mob']) { ?>
			<div class="img">
				<?=check_img('assets/uploads/'.$folder.'/mobile/'.$item['mob'], array('class' => 'block mt20', 'style' => 'max-width: 100px;'));?>
				<div class="mt5 form-info"><a href="javascript:void(0)" data-toggle="removeImg" data-remove="mob">Удалить изображение</a></div>
			</div>
		<? } ?>
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

<div class="form-actions">
    <button class="btn btn-success" data-save="save">Сохранить</button>
    <button class="btn btn-info" data-save="close">Соxранить и выйти</button>
	<?=anchor('/admin/'.$this->uri->segment(2), 'Вернуться назад', array('class' => 'btn'));?>
</div>
<?=form_close();?>

<script>
	$('[data-toggle="clearFile"]').click(function(){
		$(this).closest('.input-file').find('.form-input, [type="file"]').val('');
	});
	
	$('[data-toggle="removeImg"]').click(function(){
		if(!confirm('Удалить изображение?')) return;
		var csrf_test_name = "<?=$this->security->get_csrf_hash();?>";
		
		el = $(this);
		name = el.attr('data-remove');
		
		$.ajax({
			type  		: "POST",
			url   		: '<?=base_url('admin/'.uri(2).'/ajaxDeleteImg/'.uri(4));?>',
			data		: {
				csrf_test_name : csrf_test_name,
				delete_img : 'delete',
				name	: name
			},
			error 		: function () {
				alert('Ошибка запроса');
			},
			success		: function(data) {
				if(data.error)
				{
					alert(data.text);
				} else {
					el.closest('.img').remove();
				}
			}
        });
	});
    $('[data-save]').click(function(){
        var param = $(this).attr('data-save');

        var src = (param === 'save') ? '<?=base_url('admin/'.uri(2).'/edit/'.uri(4));?>' : '<?=base_url('admin/'.uri(2).'/edit/'.uri(4).'/close');?>';

        $('#mainForm').attr('action', src);
    });
</script>