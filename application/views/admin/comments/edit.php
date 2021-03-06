<?=form_open_multipart('', array('class' => 'responsive-form'));?>

<div class="row form-group">
	<div class="col-3 form-collabel">
		Товар
	</div>
	<div class="col-9 form-colinput">
		<select class="form-input" name="idParent">
		<? foreach($parents as $value => $label) { ?>
			<option value="<?=$value;?>" <?=set_select('idParent', $value, $item['idParent'] == $value ? true : false);?>><?=$label;?></option>
		<? } ?>
		</select>
		<?=form_error('idParent'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Имя <span class="required">*</span>
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="name" value="<?=set_value('name', $item['name']);?>" />
		<?=form_error('name'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Ссылка
	</div>
	<div class="col-9 form-colinput">
		<input type="text" class="form-input" name="link" value="<?=set_value('link', $item['link']);?>" />
		<?=form_error('link'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Оценка
	</div>
	<div class="col-9 form-colinput">
		<select name="raiting" class="form-input">
		<? for($i = 1; $i < 6; $i++) { ?>
			<option value="<?=$i;?>" <?=set_select('raiting', $i, $i == $item['raiting'] ? true : false);?>><?=$i;?></option>
		<? } ?>
		</select>
		<?=form_error('link'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel">
		Текст
	</div>
	<div class="col-9 form-colinput">
		<textarea name="text" class="form-input" rows="3"><?=set_value('text', $item['text']);?></textarea>
		<?=form_error('text'); ?>
	</div>
</div>
<div class="row form-group">
	<div class="col-3 form-collabel _nopadding">
		Отображать на сайте
	</div>
	<div class="col-9 form-colinput">
		<input type="checkbox" name="visibility" <?=$item['visibility'] == 1 ? 'checked' : '';?> />
		<?=form_error('visibility'); ?>
	</div>
</div>

<div class="form-actions">
	<button class="btn btn-success">Редактировать</button>
	<?=anchor('/admin/'.uri(2), 'Вернуться назад', array('class' => 'btn'));?>
</div>
<?=form_close();?>