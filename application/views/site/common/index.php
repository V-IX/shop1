<?=script('assets/plugins/tiny/tiny.js');?>

<? if(!empty($slider)) {?>
<div class="offer">
	<div class="wrapper">
		<div class="offer-left"><? $this->load->view('site/common/slider'); ?></div>
		<div class="offer-right">
		<?=isset($banners['home']) ? banner($banners['home']) : '';?>
		</div>
	</div>
</div>
<? } ?>

<div class="home">

<div class="advantages">
	<div class="wrapper">
		<div class="item _1">
			<div class="img"></div>
			<div class="descr">20 лет опыт<br/>работы в сфере</div>
		</div>
		<div class="item _2">
			<div class="img"></div>
			<div class="descr">Беспроцентная<br/>рассрочка</div>
		</div>
		<div class="item _3">
			<div class="img"></div>
			<div class="descr">Профессиональный<br/>монтаж</div>
		</div>
		<div class="item _4">
			<div class="img"></div>
			<div class="descr">Бесплатная<br/>доставка</div>
		</div>
	</div>
</div>

<div class="homecat">
	<div class="wrapper">
		<div class="list">
			<ul class="row">
			<? $i = 1; foreach($homecat as $_homecat) { ?>
				<li class="col-3">
					<div class="item"><a href="<?=base_url('catalog/'.$_homecat['alias']);?>"><?=$_homecat['title'];?></a></div>
				</li>
				<? if($i%4 == 0) { ?><li class="floater"></li><? } ?>
			<? $i++;} ?>
			</ul>
		</div>
	</div>
</div>

<div class="homeprod">
	<div class="wrapper">
		<div class="htabs">
			<? $_ht_active = true; ?>
			<? if(!empty($prod_hit)) { ?><a href="#prodHit" class="<?=$_ht_active ? 'active' : ''; $_ht_active = false;?>" data-toggle="htab">Популярные товары</a><? } ?>
			<? if(!empty($prod_share)) { ?><a href="#prodShare" class="<?=$_ht_active ? 'active' : ''; $_ht_active = false;?>" data-toggle="htab">Акции</a><? } ?>
			<? if(!empty($prod_new)) { ?><a href="#prodNew" class="<?=$_ht_active ? 'active' : ''; $_ht_active = false;?>" data-toggle="htab">Новинки</a><? } ?>
		</div>
		<div class="htabs-items">
			<? $_ht_active = true; ?>
			<? if(!empty($prod_hit)) { ?>
				<div id="prodHit" class="htabs-item <?=$_ht_active ? 'active' : ''; $_ht_active = false;?>" data-toggle="htab-item">
					<? $this->load->view('site/shop/product-slider', array('items' => $prod_hit, 'alias' => 'prod_hit'));?>
				</div>
			<? } ?>
			<? if(!empty($prod_share)) { ?>
				<div id="prodShare" class="htabs-item <?=$_ht_active ? 'active' : ''; $_ht_active = false;?>" data-toggle="htab-item">
					<? $this->load->view('site/shop/product-slider', array('items' => $prod_share, 'alias' => 'prod_share'));?>
				</div>
			<? } ?>
			<? if(!empty($prod_new)) { ?>
				<div id="prodNew" class="htabs-item <?=$_ht_active ? 'active' : ''; $_ht_active = false;?>" data-toggle="htab-item">
					<? $this->load->view('site/shop/product-slider', array('items' => $prod_new, 'alias' => 'prod_new'));?>
				</div>
			<? } ?>
		</div>
	</div>
</div>
<script>
	$('[data-toggle="htab"]').click(function(event){
		event.preventDefault();
		
		el = $(this);
		if(el.hasClass('active')) return false;
		
		id = el.attr('href');
		
		$('[data-toggle="htab"]').removeClass('active');
		$('[data-toggle="htab-item"]').removeClass('active');
		
		el.addClass('active');
		$(id).addClass('active');
		
		return false;
	});
</script>

<div class="homeinfo">
	<div class="wrapper">
		<div class="side left">
			<div class="hometitle">
				Новости и акции
				<a href="<?=base_url('news');?>">Все новости</a>
			</div>
			<? if(!empty($news)) { $new = $news[0];?>
				<a href="<?=base_url('news/'.$new['alias']);?>" class="item _with_img clearfix">
					<div class="img"><?=check_img('assets/uploads/news/thumb/'.$new['img'], array('alt' => $new['mTitle']));?></div>
					<div class="descr">
						<div class="title"><?=$new['title'];?></div>
						<div class="brief"><?=$new['brief'];?></div>
						<div class="more"><span>Читать полностью</span></div>
						<div class="date"><?=translate_date($new['addDate']);?></div>
					</div>
				</a>
			<? } ?>
		</div>
		<div class="side right">
			<div class="hometitle">
				Советы
				<a href="<?=base_url('articles');?>">Все советы</a>
			</div>
			<? if(!empty($articles)) { $new = $articles[0];?>
				<a href="<?=base_url('articles/'.$new['alias']);?>" class="item">
					<div class="descr">
						<div class="title"><?=$new['title'];?></div>
						<div class="brief"><?=$new['brief'];?></div>
						<div class="more"><span>Читать полностью</span></div>
					</div>
				</a>
			<? } ?>
		</div>
	</div>
</div>

<div class="homeabout">
	<div class="wrapper">
		<h1 class="title"><?=$pageinfo['title'];?></h1>
		<div class="text text-editor"><?=$pageinfo['text'];?></div>
	</div>
</div>

<? if(!empty($mfrs)) { ?>

<div class="homemfrs">
	<div class="wrapper">
		<div class="hometitle">Наши бренды</div>
		<div class="homemfrs-slider-wrap">
			<div class="homemfrs-slider" id="mfrsSlider">
				<ul>
				<? foreach($mfrs as $mfr) { ?>
					<li>
						<a href="<?=base_url('mfrs/'.$mfr['alias']);?>" class="item">
							<?=img(array('src' => 'assets/uploads/mfrs/'.$mfr['img'], 'alt' => $mfr['mTitle']));?>
						</a>
					</li>
				<? } ?>
				</ul>
			</div>
			<? if(count($mfrs > 5)) { ?>
				<a class="homemfrs-btn _prev" id="mfrsPrev" onclick="mfrs.move(-1)"><?=fa('chevron-left');?></a>
				<a class="homemfrs-btn _next" id="mfrsNext" onclick="mfrs.move(1)"><?=fa('chevron-right');?></a>
				
				<script>
					var mfrs = new TINY.slider.slide('mfrs',{
						id: 'mfrsSlider',
						auto: 10,
						resume: true,
						left:'mfrsPrev',
						right:'mfrsNext'
					}); 
				</script>
			<? } ?>
		</div>
	</div>
</div>

<? } ?>

</div>