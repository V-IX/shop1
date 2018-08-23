<tr data-cart-rowid="<?=$item['rowid'];?>">
	<td class="td-img">
		<a href="<?=base_url('product/'.$item['alias']);?>" class="img">
			<?=check_img('assets/uploads/products/thumb/'.$item['img'], array('alt' => $item['name']));?>
		</a>
	</td>
	<td class="td-title">
		<a href="<?=base_url('product/'.$item['alias']);?>" class="item">
			<div class="title"><?=$item['name'];?> <span class="regular">(<?=$item['id'];?>)</span></div>
			<div class="brief"><?=$item['brief'];?></div>
		</a>
	</td>
	<td class="td-price" nowrap>
		<div class="price"><?=price($item['price']);?> <?=$currency['unit'];?></div>
		<div class="price2"><?=price_old($item['price']);?> byr</div>
	</td>
	<td class="td-count">
		<div class="cart-counter" data-toggle="cart-counter">
			<a href="javascript:void(0)" class="cart-counter-btn _prev" data-cart-direction="-1">&minus;</a>
			<a href="javascript:void(0)" class="cart-counter-btn _next" data-cart-direction="1">&plus;</a>
			<input type="text" name="qty" class="cart-counter-input _change" data-toggle="cart-input" value="<?=$item['qty'];?>" />
		</div>
	</td>
	<td class="td-price" nowrap>
		<div class="price"><?=price($item['subtotal']);?> <?=$currency['unit'];?></div>
		<div class="price2"><?=price_old($item['subtotal']);?> byr</div>
	</td>
	<td class="td-remove">
		<a href="javascript:void(0)" data-cart="remove"><?=fa('times');?></a>
	</td>
</tr>