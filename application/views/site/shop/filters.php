<?=link_tag('assets/plugins/jquery-ui/jquery-ui.css');?>
<?=script('assets/plugins/jquery-ui/jquery-ui.min.js');?>

<form action="<?=current_url();?>" method="GET" class="filter-form">
	<ul class="filter-list">
	<? foreach($fields as $field) { ?>
		<? $id_field = $field['idItem']; ?>
		<li>
			<div class="title"><?=$field['title'];?></div>
			<div class="item">
			
			<? if($field['type'] == 'text') { ?>
				<input type="text" name="text[<?=$id_field;?>]" class="form-input" value="<?=isset($_GET['text'][$id_field]) ? $_GET['text'][$id_field] : '';?>" />
			<? } ?>
			
			<? if($field['type'] == 'number') { ?>
				<div class="row mb20">
					<div class="col-6"><input type="text" name="num[<?=$field['idItem']?>][from]" class="form-input" id="rangeFrom<?=$field['idItem']?>" value="<?=intval($field['get_min']);?>" /></div>
					<div class="col-6 _defis"><input type="text" name="num[<?=$field['idItem']?>][to]" class="form-input" id="rangeTo<?=$field['idItem']?>" value="<?=intval($field['get_max']);?>" /></div>
				</div>
				<div class="slider-ui" id="rangeSlider<?=$field['idItem']?>"></div>
				<script>
					$('#rangeSlider<?=$field['idItem']?>').slider({
						min: <?=$field['min'];?>,
						max: <?=$field['max'];?>,
						values: [<?=$field['get_min'];?>, <?=$field['get_max'];?>],
						orientation: "horizontal",
						range: true,
						animate: true,
						slide: function( event, ui ) {
							$('#rangeFrom<?=$field['idItem']?>').val(ui.values[0]);
							$('#rangeTo<?=$field['idItem']?>').val(ui.values[1]);
						}
					});
					
					$('#rangeFrom<?=$field['idItem']?>').keyup(function() {$('#rangeSlider<?=$field['idItem']?>').slider('values', 0, $(this).val());});
					$('#rangeTo<?=$field['idItem']?>').keyup(function() {$( "#rangeSlider<?=$field['idItem']?>" ).slider('values', 1, $(this).val());});

				</script>
			<? } ?>
			
			<? if($field['type'] == 'select') { ?>
				<select name="select[<?=$id_field;?>]" class="form-input">
				<? foreach($field['values'] as $value => $label) { ?>
					<option value="<?=$value;?>" <?=(isset($_GET['select'][$id_field]) and $_GET['select'][$id_field] == $value) ? 'selected' : '';?>><?=$label;?></option>
				<? } ?>
				</select>
			<? } ?>
			
			<? if($field['type'] == 'checkbox') { ?>
				<div class="ch-list">
				<? foreach($field['values'] as $value => $label) { ?>
					<label>
						<input type="checkbox" name="checkbox[<?=$id_field;?>][<?=$value;?>]" <?=isset($_GET['checkbox'][$id_field][$value]) ? 'checked' : '';?> value="<?=$label;?>" />
						<?=$label;?>
					</label>
				<? } ?>
				</div>
			<? } ?>
			
			</div>
		</li>
	<? } ?>
		<li class="text-center">
			<? if(!empty($_GET)) { ?><div class="mb10">Найдено: <?=$count;?></div><? } ?>
			<button class="btn btn-orange wide">Показать</button>
			<? if(!empty($_GET)) { ?><div class="mt5 h6"><a href="<?=current_url();?>" class="text-gray">сбросить фильтр</a></div><? } ?>
		</li>
	</ul>
</form>