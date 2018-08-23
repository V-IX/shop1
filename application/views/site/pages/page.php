<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
		<h1 class="page-title"><?=$item['title'];?></h1>
	</div>
</section>

<section class="page">
	<div class="wrapper">
		<div class="text-editor mb30"><?=$item['text'];?></div>
		<div class="row">
			<div class="col-6 mt5 text-gray">
				<a href="<?=base_url();?>" class="news-back">Вернуться на главную</a>
			</div>
			<div class="col-6">
				<div class="social text-right">
					<div class="social-label mr10">Поделиться:</div>
					<div class="social-init" data-toggle="social"></div>
					<?=script('assets/plugins/share42/share.js');?>
				</div>
			</div>
		</div>
	</div>
</section>