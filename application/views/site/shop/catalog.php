<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
	</div>
</section>

<section class="catalog">
	<div class="wrapper">
		<div class="catalog-left">
			<? $this->load->view('site/shop/navigation'); ?>
			<? if(isset($fields) and !empty($fields)) $this->load->view('site/shop/filters'); ?>
			<?=isset($banners['catalog_left']) ? '<div class="mt20"></div>'.banner($banners['catalog_left']) : '';?>
		</div>
		<div class="catalog-right">
			<?=isset($banners['catalog_top']) ? banner($banners['catalog_top']).'<div class="mb30"></div>' : '';?>
			<div class="page-top">
			<? if(isset($item)) { ?>
				<h1 class="page-title"><?=$item['title'];?></h1>
				<? if($item['brief']) { ?><div class="page-brief"><?=$item['brief'];?></div><? } ?>
			<? } else { ?>
				<h1 class="page-title"><?=$pageinfo['title'];?></h1>
				<? if($pageinfo['brief']) { ?><div class="page-brief"><?=$pageinfo['brief'];?></div><? } ?>
			<? } ?>
			</div>
			
			<? if(empty($products)) { ?>
			
				<div class="catalog-empty">
					В категории нет товаров. <a href="<?=base_url('catalog');?>">Перейти в каталог</a>.
				</div>
			
			<? } else {  ?>
			
				<div class="catalog-list clearfix">
					<ul class="row">
					<? $i = 1; foreach($products as $product) { 
					   if (!$product['mainCatId']) $product['mainCatId'] = 1;
                       
                       ?>
						<li class="col-4">
							<a href="<?=base_url("catalog/".$paths[$product['mainCatId']]."/".$product['alias']);?>" class="catalog-item">
								<div class="img">
									<?=check_img('assets/uploads/products/thumb/'.$product['img'], array('alt' => $product['mTitle']));?>
									<span class="icon _view"><?=fa('eye');?></span>
									<? if($siteinfo['shop']) { ?>
										<span class="icon _cart" data-toggle="add2cart" data-cart-id="<?=$product['articul'];?>"><?=fa('shopping-cart');?></span>
									<? } else { ?>
										<span class="icon _discover"><?=fa('phone');?></span>
									<? } ?>
									<? if($product['sticker_new']) { ?><div class="sticker-new"></div><? } ?>
									<? if($product['sticker_hit'] or $product['oldPrice'] != 0) { ?>
										<div class="sticker-list">
											<? if($product['sticker_hit']) { ?><span class="sticker-circle _hit"></span><? } ?>
											<? if($product['oldPrice'] != 0) { ?><span class="sticker-circle _discount"></span><? } ?>
										</div>
									<? } ?>
								</div>
								<div class="title"><?=$product['title'];?></div>
								<div class="brief"><?=$product['brief'];?></div>
								<div class="bottom">
								<? if($siteinfo['shop']) { ?>
									<? if($product['oldPrice'] != 0) { ?>
										<div class="clearfix">
											<div class="left">
												<div class="oldprice"><?=price($product['oldPrice']);?> <?=$currency['unit'];?></div>
											</div>
											<div class="right">
												<div class="price"><?=price($product['price']);?> <?=$currency['unit'];?></div>
											</div>
										</div>
									<? } else { ?>
										<div class="price"><?=price($product['price']);?> <?=$currency['unit'];?></div>
									<? } ?>
								<? } else { ?>
									<span class="discover" data-toggle="popup" data-task="Узнать стоимость: <?=htmlspecialchars($product['title']);?>">Узнать стоимость</span>
								<? } ?>
								</div>
							</a>
						</li>
						
						<? if($i%3 == 0) { ?><li class="floater"></li><? } ?>
					<? $i++;} ?>
					</ul>
				</div>
				
				<?=$this->pagination->create_links();?>
			
			<? } ?>
			
			<?=isset($banners['catalog_bottom']) ? '<div class="mt40"></div>'.banner($banners['catalog_bottom']) : '';?>
			
			
			
			<? if(isset($item)) { ?>
				<? if(strip_tags($item['text']) != '') { ?>
				<section class="page-text">
						<div class="text-editor"><?=$item['text'];?></div>
				</section>
				<? } ?>
			<? } else { ?>
				<? if(strip_tags($pageinfo['text']) != '') { ?>
				<section class="page-text">
						<div class="text-editor"><?=$pageinfo['text'];?></div>
				</section>
				<? } ?>
			<? } ?>
		</div>
	</div>
</section>