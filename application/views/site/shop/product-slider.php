<div class="product-slider-wrap">
<div class="wrapper">
	<div class="flexslider" id="<?=$alias;?>Slider">
		<ul class="slides">
		<?  foreach($items as $product) { 
		  if (isset($product['mainCatId']) AND $product['mainCatId']){
		       
		  } elseif ($product['idParent']) $product['mainCatId'] = $product['idParent'];
          else $product['mainCatId']  =1;
          ?>
			<li>
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
		<? } ?>
		</ul>
	</div>
	<? if(count($items) > 4) { ?>
	    <div class="offer-btns" id="<?=$alias;?>SliderBtns">
        <a href="javascript:void(0)" class="<?=$alias;?>-sliderbtn _prev" id="<?=$alias;?>Prev">
            <?=fa('chevron-left');?>
        </a>
        <a href="javascript:void(0)" class="<?=$alias;?>-sliderbtn _next" id="<?=$alias;?>Next">
            <?=fa('chevron-right');?>
        </a>
    </div>
	<? } ?>
	</div>
</div>


<script>
    numItems = 4;
    numWidth = 245;
    if ($(window).width() <= '999') {
        numItems = 3;
    }
    if ($(window).width() <= '575') {
        numItems = 1;
        numWidth = 245;
    }   
            $('#<?=$alias;?>Slider').flexslider({
                    animation: "slide",
                    controlNav: false,
                    directionNav: false,
                    slideshow: false,
                    itemWidth: numWidth,
                    animationLoop: true,
                    itemMargin: 10,
                    minItems: numItems,
                    maxItems: numItems,
                    prevText: 'prod_hitPrev',
                    nextText: 'prod_hitNext',
                    customDirectionNav: $("#<?=$alias;?>SliderBtns a")
            });
</script>