<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
		<h1 class="page-title"><?=$pageinfo['title'];?></h1>
		<? if($pageinfo['brief']) { ?><div class="page-brief"><?=$pageinfo['brief'];?></div><? } ?>
	</div>
</section>

<section class="cart">
	<div class="wrapper">
	<? if(empty($items)) { ?>
		<div class="catalog-empty">
			В корзине нет товаров. <a href="<?=base_url('catalog');?>">Перейти в каталог</a>.
		</div>
	<? } else { ?>
		<? if($error) { ?>
			<?=action_result('error', fa('warning mr5').' '.$error);?>
			<div class="mb30"></div>
		<? } ?>
		<table class="cart-list">
			<thead>
				<tr>
					<th>Фото</th>
					<th>Товар</th>
					<th>Цена</th>
					<th>Количество</th>
					<th>Сумма</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
			<? foreach($items as $item) { ?>
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
					<td class="td-price _1" nowrap>
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
			<? } ?>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6">Итого товаров на сумму: <span data-cart="total_price"><?=price($this->cart->total());?></span> <?=$currency['unit'];?></td>
				</tr>
			</tfoot>
		</table>
		
		<?=form_open('', array('class' => 'cart-form mt50'));?>
		
			<div class="mb45">
				<div class="cart-title _order">
					<div class="title">Оформление заказа</div>
					<div class="descr"><span class="required">*</span> отмечены поля обязательные для заполнения</div>
				</div>
				<div class="row">
					<div class="col-4">
						<div class="cart-group">
							<div class="caption">Введите Ваше Имя Фамилию:</div>
							<input type="text" name="name" class="form-input form-input-big" placeholder="Иван Иванов" value="<?=set_value('name');?>" />
							<?=form_error('name');?>
						</div>
					</div>
					<div class="col-4">
						<div class="cart-group">
							<div class="caption">Телефон с кодом оператора: <span class="required">*</span></div>
							<input type="text" name="phone" class="form-input form-input-big" placeholder="+375 (29) 299-29-29" value="<?=set_value('phone');?>" data-rules="required" />
							<?=form_error('phone');?>
						</div>
					</div>
					<div class="col-4">
						<div class="cart-group">
							<div class="caption">Ваш e-mail:</div>
							<input type="text" name="email" class="form-input form-input-big" placeholder="example@mail.ru" value="<?=set_value('email');?>" />
							<?=form_error('email');?>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="cart-title _delivery">
						<div class="title">Доставка</div>
						<div class="descr">выберите способ доставки</div>
					</div>
					<ul class="cart-checkers mb30">
					<? $_del_adres = 1;?>
					<? $i = 1; foreach($delivery as $_del) { ?>
						<? if($i == 1) $_del_adres = $_del['adres']; ?>
						<li>
							<label>
								<input type="radio" name="delivery" value="<?=$_del['idItem'];?>" <?=set_radio('delivery', $_del['idItem']);?> data-adres="<?=$_del['adres'];?>" />
								<?=$_del['title'];?>
								<span class="">(<?=$_del['price'] == 0 ? 'бесплатно' : price($_del['price']).' '.$currency['unit'];?>)</span>
							</label>
						</li>
					<? $i++;} ?>
					</ul>
					<div class="cart-group mb15 <?=$_del_adres ? '' : 'none';?>" id="cartAdres">
						<div class="caption">Введите Ваш адрес:</div>
						<input type="text" name="adres" class="form-input form-input-big" placeholder="г.Новополоцк, ул.Молодежная, 156, корпус 2, кв.123" value="<?=set_value('adres');?>" />
					</div>
					<div class="cart-group">
						<div class="caption">Комментарий к заказу:</div>
						<textarea name="text" class="form-input form-input-big" rows="5" placeholder="Прошу осуществить доставку в выходные дни с 8 до 22.00"><?=set_value('text');?></textarea>
					</div>
				</div>
				<div class="col-6">
					<div class="cart-title _pay">
						<div class="title">Оплата</div>
						<div class="descr">выберите способ оплаты</div>
					</div>
					<ul class="cart-checkers mb30">
					<? $i = 1; foreach($pay as $_pay) { ?>
						<li>
							<label>
								<input type="radio" name="pay" value="<?=$_pay['idItem'];?>" <?=set_radio('pay', $_pay['idItem']);?> />
								<?=$_pay['title'];?>
								<? if($_pay['brief']) { ?><span>(<?=$_pay['brief'];?>)</span><? } ?>
							</label>
						</li>
					<? $i++;} ?>
					</ul>
					<div class="cart-result">
						<div class="text">
							<? 
								$_cart_total = $this->cart->total();
								$_del_total = 0;
								$_del_title = 'не указано';
								$_pay_title = 'не указано';
								
								$_del_post = $this->input->post('delivery');
								if($_del_post and isset($delivery[$_del_post]))
								{
									$_del_total = $delivery[$_del_post]['price'];
									$_del_title = $delivery[$_del_post]['title'];
								}
								
								$_pay_post = $this->input->post('pay');
								if($_pay_post and isset($pay[$_pay_post]))
								{
									$_pay_title = $pay[$_pay_post]['title'];
								}
								
								$_total = $_cart_total + $_del_total;
							?>
							<p>Товар на сумму: <span class="bold"><?=price($_cart_total);?> <?=$currency['unit'];?></span></p>
							<p>Доставка: <span class="bold"><?=price($_del_total);?> <?=$currency['unit'];?></span></p>
							<p>Доставка: <span class="bold" id="cartDel"><?=$_del_title;?></span></p>
							<p>Способ оплаты: <span class="bold" id="cartPay"><?=$_pay_title;?></span></p>
						</div>
						<div class="total">
							Итого: <?=price($_total);?> <?=$currency['unit'];?>
						</div>
						<button class="btn">Оформить заказ</button>
					</div>
				</div>
			</div>
		
		<?=form_close();?>
	<? } ?>
	</div>
</section>

<? if(strip_tags($pageinfo['text']) != '') { ?>

<section class="page-text">
	<div class="wrapper">
		<div class="text-editor"><?=$pageinfo['text'];?></div>
	</div>
</section>

<? } ?>

<script>
	$('[name="delivery"]').change(function(){
		el = $(this);
		if(el.attr('data-adres') == 1) $('#cartAdres').fadeIn(300);
		else $('#cartAdres').hide();
		
		text = el.closest('li').text();
		span = el.closest('li').find('span').text();
		text = text.replace(span, '');
		$('#cartDel').text(text);
	});
	
	$('[name="pay"]').change(function(){
		el = $(this);
		text = el.closest('li').text();
		span = el.closest('li').find('span').text();
		text = text.replace(span, '');
		$('#cartPay').text(text);
	});
</script>