<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
		<h1 class="page-title"><?=$pageinfo['title'];?> №<?=$item['alias'];?></h1>
		<? if($pageinfo['brief']) { ?><div class="page-brief"><?=$pageinfo['brief'];?></div><? } ?>
	</div>
</section>

<section class="cart">
	<div class="wrapper">
		<? if($error) { ?>
			<?=action_result('error', fa('warning mr5').' '.$error);?>
			<div class="mb30"></div>
		<? } ?>
		
		<div class="mb30">
			<ul class="cart-confirm mb20">
				<li>
					<div class="row">
						<div class="col-3 bold">Способ доставки:</div>
						<div class="col-9"><?=$item['delivery'];?></div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-3 bold">Стоимость доставки:</div>
						<div class="col-9"><?=price($item['delivery_price']);?> <?=$currency['unit'];?></div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-3 bold">Оплата:</div>
						<div class="col-9"><?=$item['pay'];?></div>
					</div>
				</li>
			</ul>
		</div>
		
		<table class="cart-list mb30">
			<thead>
				<tr>
					<th>Фото</th>
					<th>Товар</th>
					<th>Цена</th>
					<th>Количество</th>
					<th>Сумма</th>
				</tr>
			</thead>
			<tbody>
			<? foreach($item['child'] as $product) { ?>
				<tr>
					<td class="td-img">
						<div class="img">
							<?=check_img('assets/uploads/products/thumb/'.$product['img'], array('alt' => $product['title']));?>
						</div>
					</td>
					<td class="td-title">
						<div class="item">
							<div class="title"><?=$product['title'];?> <span class="regular">(<?=$product['articul'];?>)</span></div>
							<div class="brief"><?=$product['brief'];?></div>
						</div>
					</td>
					<td class="td-price" nowrap>
						<div class="price"><?=price($product['price']);?> <?=$currency['unit'];?></div>
						<div class="price2"><?=price_old($product['price']);?> byr</div>
					</td>
					<td class="td-count">
						<div class="count"><?=$product['count'];?></div>
					</td>
					<td class="td-price" nowrap>
						<div class="price"><?=price($product['total']);?> <?=$currency['unit'];?></div>
						<div class="price2"><?=price_old($product['total']);?> byr</div>
					</td>
				</tr>
			<? } ?>
			</tbody>
		</table>
		<div class="clearfix">
			<div class="left h3 bold mt5">Итого: <?=price($item['total']);?> <?=$currency['unit'];?></div>
			<a href="<?=base_url('catalog');?>" class="btn right">Перейти в каталог</a>
		</div>
	</div>
</section>

<? if(!empty($hits)) { ?>
<?=script('assets/plugins/tiny/tiny.js');?>
<hr class="page-top-sep mt50 mb50" />
<section>
	<div class="wrapper">
		<div class="h2 bold text-center mb30">Хиты продаж</div>
		<? $this->load->view('site/shop/product-slider', array('items' => $hits, 'alias' => 'hits'));?>
	</div>
</section>
<? } ?>

<? if(strip_tags($pageinfo['text']) != '') { ?>

<section class="page-text">
	<div class="wrapper">
		<div class="text-editor"><?=$pageinfo['text'];?></div>
	</div>
</section>

<? } ?>