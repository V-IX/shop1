<?=script('assets/plugins/tiny/tiny.js');?>

<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
	</div>
</section>

<section class="product">
	<div class="product-top">
		<div class="wrapper">
			<div class="product-left">
				<div class="gallery">
					<a href="<?=base_url('assets/uploads/products/'.$item['img']);?>" class="img _big" <? if($item['img']) { ?>data-toggle="vix"<? } ?>>
						<?=check_img('assets/uploads/products/thumb/'.$item['img'], array('alt' => $item['mTitle']));?>
						<span class="zoom"><?=fa('eye');?></span>
					</a>
					<? if(!empty($imgs)) { ?>
						<div class="gallery-slider-wrap">
							<div class="gallery-slider" id="gallerySlider">
								<ul>
								<? foreach($imgs as $img) { ?>
									<li>
										<a href="<?=base_url('assets/uploads/products/'.$img['img']);?>" class="img _small" data-toggle="vix">
											<?=check_img('assets/uploads/products/thumb/'.$img['img'], array('alt' => $item['mTitle']));?>
											<span class="zoom"><?=fa('eye');?></span>
										</a>
									</li>
								<? } ?>
								</ul>
							</div>
							<? if(count($imgs) > 4) { ?>
								<a href="javascript:void(0)" class="gallery-btn _prev" id="galleryPrev" onclick="gallery.move(-1)"><?=fa('caret-left');?></a>
								<a href="javascript:void(0)" class="gallery-btn _next" id="galleryNext" onclick="gallery.move(1)"><?=fa('caret-right');?></a>
								
								<script>
									var gallery = new TINY.slider.slide('gallery',{
										id: 'gallerySlider',
										auto: false,
										left:'galleryPrev',
										right:'galleryNext'
									}); 
								</script>
							<? } ?>
						</div>
					<? } ?>
				</div>
			</div>
			<div class="product-right">
				<h1 class="page-title"><?=$item['title'];?></h1>
				<? if($siteinfo['reviews']) { ?>
					<? $raiting = raiting($comments);?>
					<div class="mt20">
					<? if($raiting) { ?>
						<div class="stars _<?=raiting($comments);?>"></div>
						<a href="javascript:void(0)" class="product-comment-link ml20" data-hreftab="#reviews">Все отзывы: <span class="bold"><?=count($comments);?></span></a>
					<? } ?>
					</div>
				<? } ?>
				
				<? // ----- FEATURES -----?>
				<div class="product-features mt20">
					<ul class="row">
						<? if(!empty($mfrs)) { ?><li class="col-6"><?=fa('cogs fa-fw mr5');?> Производитель: <a href="<?=base_url('mfrs/'.$mfrs['alias']);?>"><?=$mfrs['title']?></a></li><? } ?>
						<? if($item['country']) { ?><li class="col-6"><?=fa('location-arrow fa-fw mr5');?> Страна: <?=$item['country'];?></li><? } ?>
						<li class="floater"></li>
						<? if($item['text_garanty']) { ?><li class="col-6"><?=fa('file-text-o fa-fw mr5');?> Гарантия: <?=$item['text_garanty'];?></li><? } ?>
						<? if($item['text_delivery']) { ?><li class="col-6"><?=fa('car fa-fw mr5');?> Гарантия: <?=$item['text_delivery'];?></li><? } ?>
					</ul>
				</div>
				
				<? // ----- MODIFICATIONS -----?>
				
				<? if($siteinfo['shop'] == 1) {
					$_checked = false;
					$_start_id = false;
					$_start_price = 0;
					$_start_oldprice = 0;
					$_start_mod = 0;
					if(!$item['count_subtraction'] or ($item['count_subtraction'] and $item['count'] > 0))
					{
						$_start_id = $item['articul'];
						$_start_price = $item['price'];
						$_start_oldprice = $item['oldPrice'];
					}
				} ?>
				
				<? if(!empty($mods)) { ?>
					<div class="mt20"></div>
					<div class="h5 bold mb10">Модификации</div>
					<ul class="product-mods <?=$siteinfo['shop'] == 1 ? 'active' : '';?>">
					<? if($siteinfo['shop'] == 1) { ?>
						<? $_dis = ($item['count_subtraction'] and $item['count'] < 1) ? 'disabled' : '';?>
						<li>
							<label>
									<input type="radio" name="mod" value="<?=$item['articul'];?>" data-mod="0" data-price="<?=price($item['price']);?>" data-price2="<?=price_old($item['price']);?>" data-old="<?=price($item['oldPrice']);?>" <?=$_dis;?> <?=(!$_dis and !$_checked) ? 'checked' : ''?> />
								<?=$item['title'];?> <span class="">(<?=$item['articul'];?>)</span>
								<? if($_dis) { ?><span class="ml10">нет в наличии</span><? } ?>
							</label>
						</li>
						<? if(!$_dis and !$_checked) $_checked = true;?>
					<? } ?>
					<? foreach($mods as $mod) { ?>
						<? $_mod_price = price_calc($mod['price'], $currency['value'], $p_currency['value']);?>
						<? $_mod_oldprice = price_calc($mod['oldPrice'], $currency['value'], $p_currency['value']);?>
						
						<li>
							<label>
								<? if($siteinfo['shop'] == 1) { ?>
									<? $_dis = ($item['count_subtraction'] and $mod['count'] < 1) ? 'disabled' : '';?>
									
									
									<input type="radio" name="mod" value="<?=$mod['articul'];?>" data-mod="1" data-price="<?=price($_mod_price);?>" data-price2="<?=price_old($_mod_price);?>" data-old="<?=price($_mod_oldprice);?>" <?=$_dis;?> <?=(!$_dis and !$_checked) ? 'checked' : ''?> />
								<? } ?>
								<?=$mod['title'];?> <span class="">(<?=$mod['articul'];?>)</span>
								<? if($_dis) { ?><span class="ml10">нет в наличии</span><? } ?>
							</label>
						</li>
						<? if(!$_dis and !$_checked) {
							$_checked = true;
							$_start_id = $mod['articul'];
							$_start_price = $_mod_price;
							$_start_oldprice = $_mod_oldprice;
							$_start_mod = 1;
						} ?>
					<? } ?>
					</ul>
				<? } ?>
				
				<? // ----- PRICES -----?>
				<? if($siteinfo['shop'] == 1) { ?>
					<? if($item['count_subtraction'] == 0 or ($item['count_subtraction'] == 1 and $_checked)) { ?>
						<div class="product-panel mt20">
							<div class="top">
								<div class="row">
									<div class="col-4">
									<? if($_start_oldprice != 0) { ?>
										<span class="oldprice" id="prodOldprice"><?=price($_start_oldprice);?> <?=$currency['unit'];?></span>
									<? } ?>
									</div>
									<div class="col-4 text-center">
										<span class="price" id="prodPrice"><?=price($_start_price);?> <?=$currency['unit'];?></span>
									</div>
									<div class="col-4 text-right">
										<span class="price2" id="prodPrice2"><?=price_old($_start_price);?> byr</span>
									</div>
								</div>
							</div>
							<div class="bottom mt15">
								<div class="row">
									<div class="col-4">
										<div class="cart-counter" data-toggle="cart-counter">
											<a href="javascript:void(0)" class="cart-counter-btn _prev" data-count-direction="-1">&minus;</a>
											<a href="javascript:void(0)" class="cart-counter-btn _next" data-count-direction="1">&plus;</a>
											<input type="text" name="qty" class="cart-counter-input" data-toggle="cart-input" value="1" />
										</div>
									</div>
									<div class="col-3 text-center">
										<a href="javascript:void(0)" class="btn" data-toggle="add2cart" data-cart-mod="<?=$_start_mod;?>" data-cart-qty="1" data-cart-id="<?=$_start_id;?>">В корзину</a>
									</div>
									<div class="col-5 text-right mt10">
										<a href="javascript:void(0)" class="oneclick" data-toggle="order" data-task="Купить в один клик: <?=htmlspecialchars($item['title']);?>">Купить в один клик</a>
									</div>
								</div>
							</div>
						</div>
					<? } else { ?>
						<div class="product-discover mt20">
							<div class="h4 text-gray mb20">нет в наличии</div>
							<a href="javascript:void(0)" data-toggle="popup" data-task="Узнать стоимость: <?=htmlspecialchars($item['title']);?>">
								<?=fa('question-circle mr5');?>
								<span>Узнать стоимость</span>
							</a>
						</div>
					<? } ?>
				<? } else { ?>
					<div class="product-discover mt20">
						<a href="javascript:void(0)" data-toggle="popup" data-task="Узнать стоимость: <?=htmlspecialchars($item['title']);?>">
							<?=fa('question-circle mr5');?>
							<span>Узнать стоимость</span>
						</a>
					</div>
				<? } ?>
				
				<? // ----- CHARS -----?>
				<? $chars = json_decode($item['charArr'], true);?>
				<? if(!empty($chars)) { ?>
					<ul class="product-chars mt20">
					<? foreach($chars as $char) { ?>
						<li>
							<span><?=$char['label'];?>:</span> <?=$char['value'];?>
						</li>
					<? } ?>
					</ul>
				<? } ?>
			</div>
		</div>
	</div>
	
		
	<? // ----- TABS -----?>
	<div class="wrapper mt50">
		<div class="product-tabs" data-toggle="tabs">
			<ul class="product-tabs-list clearfix" data-tabs="list">
			<? $_tab_active = false;?>
				<? if($item['text'] != '') { ?><li><a href="#descr" class="active">Описание</a></li><? $_tab_active = true;} ?>
				<? foreach($descrs as $descr) { ?>
					<li><a href="#descr<?=$descr['idItem'];?>" class="<?=!$_tab_active ? 'active' : '';?>"><?=$descr['title'];?></a></li>
				<? $_tab_active = true;} ?>
				<? if($siteinfo['reviews']) { ?>
					<li><a href="#reviews" class="<?=!$_tab_active ? 'active' : '';?>">Отзывы <?=!empty($comments) ? '('.count($comments).')' : '';?></a></li>
				<? } ?>
			</ul>
			
			<? $_tab_active = false;?>
			<? if($item['text'] != '') { ?>
				<div class="product-tabs-item active" data-tabs="item" id="descr">
					<div class="text-editor"><?=$item['text'];?></div>
				</div>
			<? $_tab_active = true;} ?>
			<? foreach($descrs as $descr) { ?>
				<div class="product-tabs-item <?=!$_tab_active ? 'active' : '';?>" data-tabs="item" id="descr<?=$descr['idItem'];?>">
					<div class="text-editor"><?=$descr['text'];?></div>
				</div>
			<? $_tab_active = true;} ?>
			<? if($siteinfo['reviews']) { ?>
				<div class="product-tabs-item <?=!$_tab_active ? 'active' : '';?>" data-tabs="item" id="reviews">
					<? if(empty($comments)) { ?>
						<?=action_result('info', 'Нет ни одного отзыва о товаре. Вы можете стать первым!');?>
					<? } else { ?>
						<ul class="product-comments">
						<? foreach($comments as $comment) { ?>
							<li>
								<div class="title">
									<?=$comment['name'];?>
									<div class="stars _<?=$comment['raiting'];?> ml20"></div>
								</div>
								<div class="text"><?=nl2br($comment['text']);?></div>
								<? if($comment['link'] != '') { ?><div class="mt5"><a href="<?=$comment['link'];?>" target="_blank"><?=$comment['link'];?></a></div><? } ?>
							</li>
						<? } ?>
						</ul>
					<? } ?>
					<?=form_open('contacts/ajaxComment', array('data-toggle' => 'ajaxForm', 'class' => 'comments-form mt30', 'data-thanks' => '#commentThanks'));?>
						<div class="h3 bold mb15">Оставить отзыв</div>
						<div class="form-group row">
							<div class="col-6">
								<input type="text" name="name" placeholder="Представьтесь пожалуйста *" data-rules="required" class="form-input" />
							</div>
							<div class="col-6">
								<input type="text" name="phone" placeholder="Ваш телефон" class="form-input" />
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<textarea name="text" placeholder="Текст вашего отзыва *" class="form-input" rows="5" data-rules="required"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-12">
								<input type="text" name="link" placeholder="Ссылка на соцсети" class="form-input" />
							</div>
						</div>
						<div class="row mt15">
							<div class="col-6">
								<div class="form-label mr10">Ваша оценка товару</div>
								<div class="" data-toggle="stars" data-default="4"></div>
							</div>
							<div class="col-6 text-right">
								<button class="btn">Оставить отзыв</button>
								<input type="hidden" name="idParent" value="<?=$item['idItem']?>" />
							</div>
						</div>
					<?=form_close();?>
				</div>
			<? } ?>
		</div>
	</div>
	
	<? // ----- SIMILARS -----?>
	<? if(!empty($similars)) { ?>
		<div class="wrapper mt50">
			<div class="h2 bold text-center mb30">Вместе с этим покупают</div>
			<? $this->load->view('site/shop/product-slider', array('items' => $similars, 'alias' => 'similars'));?>
		</div>
	<? } ?>
	
	<? // ----- ARTICLES -----?>
	<? if(!empty($articles)) { ?>
		<div class="product-articles-wrap mt50">
			<div class="wrapper">
				<div class="hometitle">
					Советы
					<a href="<?=base_url('articles');?>">Все советы</a>
				</div>
				<div class="product-articles" id="articlesSlider">
					<ul>
					<? $i = 1; foreach($articles as $article) { ?>
						<? if($i == 1 or $i%2 == 1) { ?><li><div class="row"><? } ?>
							<div class="col-6">
								<a href="<?=base_url('articles/'.$article['alias']);?>" class="product-article">
									<div class="title"><?=$article['title'];?></div>
									<div class="brief"><?=$article['brief'];?></div>
									<div class="more"><span>Читать полностью</span></div>
								</a>
							</div>
						<? if($i%2 == 0 or $i == count($articles)) { ?></div></li><? } ?>
					<? $i++;} ?>
					</ul>
				</div>
				<? if(count($articles) > 2) { ?>
					<ul class="product-articles-nav" id="articlesNav">
					<? for($i = 0; $i < round(count($articles) / 2); $i++) { ?>
						<li onclick="articles.pos(<?=$i;?>)"></li>
					<? } ?>
					</ul>
					<script>
						var articles = new TINY.slider.slide('articles',{
							id: 'articlesSlider',
							auto: 10,
							resume: true,
							navid: 'articlesNav',
							activeclass: 'current'
						}); 
					</script>
				<? } ?>
			</div>
		</div>
	<? } ?>

	<? // ----- ASSOCIATED -----?>
	<? if(!empty($associated)) { ?>
		<div class="wrapper mt50">
			<div class="h2 bold text-center mb30">Похожие товары</div>
			<? $this->load->view('site/shop/product-slider', array('items' => $associated, 'alias' => 'associated'));?>
		</div>
	<? } ?>
</section>

<?=script('assets/plugins/vix-gallery/js/jquery.vix-gallery.js');?>
<?=link_tag('assets/plugins/vix-gallery/css/gallery.css');?>
<script>
	$('[data-toggle="vix"]').gallery();
</script>

<? if($siteinfo['reviews'] == 1) { ?>
<?=script('assets/plugins/stars/stars.js');?>
<?=link_tag('assets/plugins/stars/stars.css');?>

<div class="popup w425" id="commentThanks">
	<div class="close"></div>
	<div class="h4 bold mb10">Спасибо За Ваш отзыв!</div>
	<div class="light h5">Ваше мнение очень важно для нас!<br/>Комментарий будет опубликован после модерацию</div>
</div>
<? } ?>

<? if($siteinfo['shop'] == 1) { ?>

<script>
	$('[name="mod"]').change(function(){
		el = $(this);
		add = $('.product-panel').find('[data-toggle="add2cart"]');
		
		articul = el.val();
		price = el.attr('data-price');
		price2 = el.attr('data-price2');
		oldprice = el.attr('data-old');
		mod = el.attr('data-mod');
		
		unit = '<?=$currency['unit'];?>';
		unit2 = 'byr';
		
		add.attr('data-cart-mod', mod);
		add.attr('data-cart-id', articul);
		
		$('#prodPrice').text(price + ' ' + unit);
		$('#prodPrice2').text(price2 + ' ' + unit2);
		$('#prodOldprice').text(parseFloat(oldprice) ? oldprice + ' ' + unit : '');
	});

	$('[data-toggle="cart-input"]').bind("change keyup input click", function() {
		el = $(this);
		
		if (this.value.match(/[^0-9]/g)) {
			this.value = this.value.replace(/[^0-9]/g, '');
		}
		
		el.closest('.product-panel').find('[data-toggle="add2cart"]').attr('data-cart-qty', el.val());
	});

	$('[data-count-direction]').click(function(){
		el = $(this);
		counter = el.closest('[data-toggle="cart-counter"]');
		input = counter.find('[data-toggle="cart-input"]');
		val = parseInt(input.val());
		dir = parseInt(el.attr('data-count-direction'));
		
		val = val + dir;
		if(val < 1) val = 1;
		
		input.val(val);
		
		el.closest('.product-panel').find('[data-toggle="add2cart"]').attr('data-cart-qty', val);
	});
</script>

<? } ?>