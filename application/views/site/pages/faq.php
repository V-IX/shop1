<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
		<h1 class="page-title"><?=$pageinfo['title'];?></h1>
		<? if($pageinfo['brief']) { ?><div class="page-brief"><?=$pageinfo['brief'];?></div><? } ?>
	</div>
</section>

<section class="faq">
	<div class="wrapper">
		<? if(empty($items)) { ?>
		
			<div class="catalog-empty">
				Вопросов нет. Вы можете задать первый!
			</div>
		
		<? } else { ?>
		
			<ul class="faq-list clearfix">
			<? $i = 1; foreach($items as $item) { ?>
				<li>
					<div class="faq-item">
						<div class="title"><?=$item['title'];?></div>
						<div class="brief"><?=$item['text'];?></div>
					</div>
				</li>
			<? $i++;} ?>
			</ul>
			<?=$this->pagination->create_links();?>
		
		<? } ?>
		<div class="faq-form mt40">
			<div class="h3 bold mb20">Оставьте свой отзыв:</div>
			<?=form_open('faq/ajaxSend', array('data-toggle' => 'ajaxForm', 'data-thanks' => '#thanksReviews'));?>
				<div class="row form-group">
					<div class="col-4"><input type="text" name="name" class="form-input" data-rules="required" placeholder="Ваше имя" /></div>
					<div class="col-4"><input type="text" name="phone" class="form-input" data-rules="required" placeholder="Ваш телефон *" /></div>
					<div class="col-4"><input type="text" name="email" class="form-input" placeholder="Ваш e-mail" /></div>
				</div>
				<div class="form-group mb15">
					<textarea class="form-input" name="title" rows="5" data-rules="required" placeholder="Ваш вопрос *"></textarea>
				</div>
				<button class="btn w200">Задать вопрос</button>
			<?=form_close();?>
		</div>
	</div>
</section>

<? if(strip_tags($pageinfo['text']) != '') { ?>

<section class="page-text">
	<div class="wrapper">
		<div class="text-editor"><?=$pageinfo['text'];?></div>
	</div>
</section>

<? } ?>

<div class="popup w325" id="thanksReviews">
	<div class="close"></div>
	<div class="h3 bold mb5">Спасибо за вопрос!</div>
	<div class="h5">Наши специалисты свяжутся с Вами в ближайшее время!</div>
</div>