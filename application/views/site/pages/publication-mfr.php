<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
	</div>
</section>

<section class="news">
	<div class="wrapper">
		<h1 class="news-title mb20"><?=$item['title'];?></h1>
		<div class="text-gray mb20"><?=translate_date($item['addDate']);?></div>
		<div class="text-editor mb30"><?=$item['text'];?></div>
		<div class="row">
			<div class="col-6 mt5 text-gray">
				<a href="<?=base_url(uri(1));?>" class="news-back">все производители</a>
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
	<? // ----- SIMILARS -----?>
	<? if(!empty($products)) { ?>
		<?=script('assets/plugins/tiny/tiny.js');?>
		<div class="wrapper mt50">
			<div class="h2 bold text-center mb30">Товары <?=$item['title'];?></div>
			<? $this->load->view('site/shop/product-slider', array('items' => $products, 'alias' => 'products'));?>
		</div>
	<? } ?>
</section>