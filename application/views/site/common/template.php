<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title><?=$seo['title'];?></title>
	<meta name="keywords" content="<?=$seo['keywords'];?>" />
	<meta name="description" content="<?=$seo['description'];?>" />
	<meta name="viewport" content="width=1000" />
	
	<?=link_tag('assets/plugins/font-awesome/css/font-awesome.min.css');?>
	<?=link_tag('assets/plugins/font-ubuntu/font.css');?>
	<?=link_tag('assets/plugins/checkers/checkers.css');?>
	<?=link_tag('assets/site/css/reset.css');?>
	<?=link_tag('assets/site/css/template.css');?>
	<?=link_tag('assets/site/css/content.css');?>
	<?=link_tag('assets/site/css/color.css');?>
	
	<?=link_tag('favicon.ico', 'shortcut icon', 'image/ico');?>
	<?=link_tag('favicon.ico', 'shortcut', 'image/ico');?>
	
	<? $csrf = $this->security->get_csrf_hash();?>
	<script>
		base_url = "<?=base_url()?>"
		csrf_test_name = "<?=$csrf;?>"
	</script>
	
	<?=script('assets/plugins/jquery/jquery-1.9.1.min.js');?>
	<?=script('assets/plugins/jquery.mask/jquery.maskedinput.js');?>
	<?=script('assets/plugins/bpopup/jquery.bpopup.min.js');?>
	<?=script('assets/plugins/checkers/checkers.js');?>
	<?=script('assets/plugins/ajaxForm/form.js');?>
	<?=script('assets/site/js/cart.js');?>
	<?=script('assets/site/js/js.js');?>
	
</head>
<body>

<div class="super-wrapper">

<section class="pre-header">
	<div class="wrapper">
		<nav class="pmenu">
		<? foreach($preheader as $_pre) { ?>
			<div class="item">
				<a href="<?=base_url($_pre['link']);?>"><?=$_pre['title'];?></a>
				<? if(!empty($_pre['child'])) { ?>
					<ul class="pmenu-child">
					<? foreach($_pre['child'] as $child) { ?>
						<li>
							<a href="<?=base_url($child['link']);?>"><?=$child['title'];?></a>
						</li>
					<? } ?>
					</ul>
				<? } ?>
			</div>
		<? } ?>
		</nav>
		<? if($siteinfo['shop']) { ?>
			<a href="<?=base_url('cart');?>" class="minicart <?=$this->cart->total_items() ? '' : '_empty';?>">
				<span class="minicart-counter" data-cart="total_items"><?=$this->cart->total_items();?></span>
			</a>
		<? } ?>
	</div>
</section>

<header class="header">
	<div class="wrapper">
		<a href="<?=base_url();?>" class="logo-wrap">
			<?=img(array('src' => 'assets/uploads/settings/'.$siteinfo['img'], 'alt' => $siteinfo['mTitle'], 'class' => 'logo'));?>
			<div class="logo-text">
				<div class="logo-title"><?=$siteinfo['title'];?></div>
				<div class="logo-descr"><?=$siteinfo['descr'];?></div>
			</div>
		</a>
		<a href="javascript:void(0)" class="header-popup" data-toggle="popup" data-task="Заказать звонок: шапка">Заказать звонок</a>
		<div class="header-contacts">
			<div class="item">
				<?=fa('clock-o fa-fw');?>
				Режим работы магазина:<br/><?=$siteinfo['time'];?>
			</div>
			<div class="item">
				<?=fa('phone fa-fw');?>
				<div><?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?></div>
				<?=$siteinfo['phone2'] != '' ? '<div>'.phone($siteinfo['phone2'], $siteinfo['phone2Mask']).'</div>' : null;?>
			</div>
		</div>
	</div>
</header>

<? if(!empty($tmenu)) { ?>
<section class="tmenu-wrap">
	<div class="wrapper">
		<div class="tmenu">
			<ul>
			<? foreach($tmenu as $_tmenu) { ?>
				<li>
					<a href="<?=base_url('catalog/'.$_tmenu['alias']);?>"><?=$_tmenu['title'];?></a>
				</li>
			<? } ?>
			</ul>
		</div>
	</div>
</section>
<? } ?>

<main class="content">
	<? $this->load->view('site/'.$view); ?>
</main>

</div>

<footer class="footer">
	<section class="footer-top">
		<div class="wrapper">
			<div class="footer-nav clearfix">
			<? foreach($fmenu as $_fgroup) { ?>
				<div class="col">
					<div class="footer-title"><?=$_fgroup['title'];?></div>
					<ul class="footer-list">
					<? foreach($_fgroup['child'] as $_fchild) { ?>
						<li>
							<?=anchor($_fchild['link'], $_fchild['title'], array('target' => $_fchild['target']));?>
						</li>
					<? } ?>
					</ul>
				</div>
			<? } ?>
			</div>
			<div class="footer-contacts">
				<div class="footer-title">Звоните мы всегда Вам рады!</div>
				<div class="footer-phone">
					<?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?><br/>
					<?=$siteinfo['phone2'] ? phone($siteinfo['phone2'], $siteinfo['phone2Mask']) : '';?>
				</div>
				<div class="footer-extra">
					<? if($siteinfo['skype']) { ?><span><?=fa('skype')?> <span class="underline"><?=$siteinfo['skype'];?></span></span><? } ?>
					<span><?=fa('envelope-o')?> <span class="underline"><?=$siteinfo['email'];?></span></span>
				</div>
				<div class="footer-social">
				<? foreach($social as $_social) { ?>
					<a href="<?=$_social['link'];?>" target="_blank" title="<?=$_social['title'];?>"><?=fa($_social['icon']);?></a>
				<? } ?>
				</div>
			</div>
		</div>
	</section>
	<section class="footer-bottom">
		<div class="wrapper">
			<div class="row">
				<div class="col-6">
					<div class="footer-details">
						<div class="title"><?=$siteinfo['owner']?></div>
						<div class="text"><?=nl2br($siteinfo['details'])?></div>
					</div>
				</div>
				<div class="col-3">
					<div class="footer-center">
						<div class="footer-info">
							<div class="copyright"><?=fa('copyright fa-fw mr5');?> <?=date('Y');?> <?=$siteinfo['title'];?></div>
							<div class="time"><?=fa('clock-o fa-fw mr5');?> <?=$siteinfo['time_short'];?></div>
						</div>
						<div class="sep"></div>
						<div class="paylogo">
							<a href="<?=base_url('pages/erip');?>" class="item _erip"></a>
						</div>
					</div>
				</div>
				<div class="col-3 text-right mt10">
					<a href="http://narisuemvse.by/" target="_blank" class="developer">Разработка <span>Nariseumvse.by</span></a>
				</div>
			</div>
		</div>
	</section>
</footer>

<div class="popup w325" id="feedback">
	<div class="close"></div>
	<div class="h3 bold mb5">Заказать звонок</div>
	<div class="h5 mb15">Оставьте заявку и наши специалисты свяжутся с Вами!</div>
	<?=form_open(base_url('contacts/ajaxSend', null, true), array('data-toggle' => 'ajaxForm', 'class' => 'form'));?>
		<div class="form-group mb5">
			<input type="text" name="name" class="form-input" placeholder="Ваше имя" />
		</div>
		<div class="form-group mb10">
			<input type="text" name="phone" class="form-input" placeholder="Ваш телефон *" data-rules="required" />
		</div>
		<input type="hidden" name="title" id="popupTask" value="Обратная связь" />
		<button class="btn btn-orange btn-big wide">Оставить заявку</button>
	<?=form_close();?>
</div>
<div class="popup w325" id="thanks">
	<div class="close"></div>
	<div class="h3 bold mb5">Спасибо за заявку!</div>
	<div class="h5">Наши специалисты свяжутся<br/>с Вами в ближайшее время!</div>
</div>

<div class="popup _cart w500">
	<div class="close _close"></div>
	<div class="h3 pt-caption bold mb15">Товар добавлен в корзину!</div>
	<div class="mb20 text-gray medium">В корзине <span data-cart="total_items"><?=$this->cart->total_items();?></span> товара на сумму <span data-cart="total_price"><?=$this->cart->total();?></span> руб.</div>
	
	<div class="row mb25">
		<div class="col-5">
			<a href="javascript:void(0)" data-cart="link" class="block"><img src="" data-cart="img" class="block wide" alt="" /></a>
		</div>
		<div class="col-7 text-left">
			<div class="h4 semibold mb10 _cart_title" data-cart="title">Название товара</div>
			<div class="mb15"><span class="" data-cart="qty">1</span> шт. = <span class="" data-cart="item_total">0</span> руб.</div>
			<div class="mb5"><a href="<?=base_url('cart');?>" class="btn"><?=fa('shopping-cart mr5');?> Перейти в корзину</a></div>
			<div class=""><a href="javascript:void(0)" class="_close">Продолжить покупки</a></div>
		</div>
	</div>
	<?=form_open('contacts/ajaxOrder', array('data-toggle' => 'ajaxForm', 'class' => 'popup-form', 'data-thanks' => '#thanksSpeed'));?>
		<div class="h4 semibold mb5">Не хотите заполнять никаких форм?</div>
		<div class="mb15">Просто оставьте свой номер телефона и консультант<br/>решит все вопросы по оформлению заказа.</div>
		<input type="text" name="phone" class="form-input w200" placeholder="Ваш телефон *" data-rules="required" data-input="phone" />
		<input type="hidden" name="title" id="cartTask" value="" />
		<button class="btn ml10">Жду звонка</button>
	<?=form_close();?>
</div>
<div class="popup w325" id="order">
	<div class="close"></div>
	<div class="h3 bold mb5">Заказать звонок</div>
	<div class="h5 mb15">Оставьте заявку и наши специалисты свяжутся с Вами!</div>
	<?=form_open(base_url('contacts/ajaxOrder', null, true), array('data-toggle' => 'ajaxForm', 'class' => 'form', 'data-thanks' => '#thanksSpeed'));?>
		<div class="form-group mb5">
			<input type="text" name="name" class="form-input" placeholder="Ваше имя" />
		</div>
		<div class="form-group mb10">
			<input type="text" name="phone" class="form-input" placeholder="Ваш телефон *" data-rules="required" />
		</div>
		<input type="hidden" name="title" id="orderTask" value="Купить в один клик" />
		<button class="btn btn-orange btn-big wide">Оставить заявку</button>
	<?=form_close();?>
</div>
<div class="popup w325" id="thanksSpeed">
	<div class="close"></div>
	<div class="h3 bold mb5">Спасибо за заказ!</div>
	<div class="h5">Наши специалисты свяжутся<br/>с Вами для уточнения данных!</div>
</div>

</body>
</html>