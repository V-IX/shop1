<div class="offer-slider">
    <div class="wrapper">
        <div class="flexslider" id="offerSlider">
            <ul class="slides">
                <? foreach($slider as $slide) { ?>
        			<li>
        				<div class="offer-slide">
        					<div class="offer-img _pc" style="background-image: url('<?=base_url('assets/uploads/slider/thumb/'.$slide['img']);?>');"></div>
        					<div class="offer-img _mob" style="background-image: url('<?=base_url('assets/uploads/slider/mobile/'.$slide['mob']);?>');"></div>
        					<? if($slide['showText']) { ?>
        						<div class="wrapper">
        							<div class="offer-content text-<?=$slide['position'];?>">
        								<div class="wrap">
        									<div class="title"><?=nl2br($slide['title']);?></div>
        									<? if($slide['text']) { ?><div class="descr"><?=nl2br($slide['text']);?></div><? } ?>
        									<? if($slide['btnLink'] or $slide['btn2Link']) { ?>
        									<div class="more">
        										<?=$slide['btnLink'] != '' ? anchor($slide['btnLink'], $slide['btnLabel'], array('class' => 'offer-btn')) : null;?>
        										<?=$slide['btn2Link'] != '' ? anchor($slide['btn2Link'], $slide['btn2Label'], array('class' => 'offer-btn _alt')) : null;?>
        									</div>
        									<? } ?>
        								</div>
        							</div>
        						</div>
        					<? } ?>
        				</div>
        			</li>
        		<? } ?>
    		</ul>
        </div>
    </div>
</div>

<script>
    /* offerSlider */
    $(window).load(function() {
        $('#offerSlider').flexslider({
            animation: "slide",
            controlNav: true,
            directionNav: false
        });
    });
</script>
