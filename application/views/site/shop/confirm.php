<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
		<h1 class="page-title"><?=$pageinfo['title'];?> №<?=$order['alias'];?></h1>
		<? if($pageinfo['brief']) { ?><div class="page-brief"><?=$pageinfo['brief'];?></div><? } ?>
	</div>
</section>

<section class="cart">
	<div class="wrapper">
		<? if($error) { ?>
			<?=action_result('error', fa('warning mr5').' '.$error);?>
			<div class="mb30"></div>
		<? } ?>
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
			<? foreach($items as $item) { ?>
				<tr data-cart-rowid="<?=$item['rowid'];?>">
					<td class="td-img">
						<a href="<?=base_url('product/'.$item['alias']);?>" class="img" target="_blank">
							<?=check_img('assets/uploads/products/thumb/'.$item['img'], array('alt' => $item['name']));?>
						</a>
					</td>
					<td class="td-title">
						<a href="<?=base_url('product/'.$item['alias']);?>" class="item" target="_blank">
							<div class="title"><?=$item['name'];?> <span class="regular">(<?=$item['id'];?>)</span></div>
							<div class="brief"><?=$item['brief'];?></div>
						</a>
					</td>
					<td class="td-price" nowrap>
						<div class="price"><?=price($item['price']);?> <?=$currency['unit'];?></div>
						<div class="price2"><?=price_old($item['price']);?> byr</div>
					</td>
					<td class="td-count">
						<div class="count"><?=$item['qty'];?></div>
					</td>
					<td class="td-price" nowrap>
						<div class="price"><?=price($item['subtotal']);?> <?=$currency['unit'];?></div>
						<div class="price2"><?=price_old($item['subtotal']);?> byr</div>
					</td>
				</tr>
			<? } ?>
			</tbody>
		</table>
		<div class="mb30">
			<ul class="cart-confirm mb20">
				<? if(isset($order['name']) and $order['name'] != '') { ?>
				<li>
					<div class="row">
						<div class="col-3 bold">Имя:</div>
						<div class="col-9"><?=$order['name'];?></div>
					</div>
				</li>
				<? } ?>
				<li>
					<div class="row">
						<div class="col-3 bold">Телефон:</div>
						<div class="col-9"><?=$order['phone'];?></div>
					</div>
				</li>
				<? if(isset($order['email']) and $order['email'] != '') { ?>
				<li>
					<div class="row">
						<div class="col-3 bold">E-mail:</div>
						<div class="col-9"><?=$order['email'];?></div>
					</div>
				</li>
				<? } ?>
				<li>
					<div class="row">
						<div class="col-3 bold">Способ доставки:</div>
						<div class="col-9"><?=$order['delivery'];?></div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-3 bold">Стоимость доставки:</div>
						<div class="col-9"><?=price($order['delivery_price']);?> <?=$currency['unit'];?></div>
					</div>
				</li>
				<li>
					<div class="row">
						<div class="col-3 bold">Оплата:</div>
						<div class="col-9"><?=$order['pay'];?></div>
					</div>
				</li>
			</ul>
			<div class="h3 bold">Итого: <?=price($order['total']);?> <?=$currency['unit'];?></div>
		</div>
		<?=form_open('');?>
			<button class="btn"><?=fa('check mr5');?> Подтвердить заказ</button>
			<a href="<?=base_url('cart');?>" class="ml20">Отменить заказ</a>
			<input type="hidden" name="confirm" value="confirm" />
		<?=form_close();?>
	</div>
</section>

<? if(strip_tags($pageinfo['text']) != '') { ?>

<section class="page-text">
	<div class="wrapper">
		<div class="text-editor"><?=$pageinfo['text'];?></div>
	</div>
</section>

<? } ?>