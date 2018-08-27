<div class="offer-slider-wrap">
	<div class="offer-slider" id="offerSlider">
		<ul>
		<? foreach($slider as $slide) { 
			$slide_tag = $slide['link'] != '' ? 'a href="'.base_url($slide['link']).'"' : 'div';
			$slide_tag_close = $slide_tag == 'div' ? '/div' : '/a';
			
			$slide_bg = $slide['img'] != '' ? true : false;
			$slide_content = ($slide['showText'] == 1 or $slide['showBtn'] == 1) ? true : false;
			
			$slide_css = json_decode($slide['slide_css'], true);
			$slide_style = '';
			$slide_style .= 'width: '.$slide_css['width'].'px; ';
			$slide_style .= 'left: '.$slide_css['left'].'px; ';
			$slide_style .= 'top: '.$slide_css['top'].'px; ';
			
			$title_css = json_decode($slide['title_css'], true);
			$title_style = '';
			$title_style .= 'font-size: '.$title_css['font-size'].'px; ';
			$title_style .= 'font-weight: '.$title_css['font-weight'].'; ';
			$title_style .= 'font-style: '.$title_css['font-style'].'; ';
			$title_style .= 'text-transform: '.$title_css['text-transform'].'; ';
			$title_style .= 'color: #'.$title_css['color'].'; ';
			
			$text_css = json_decode($slide['text_css'], true);
			$text_style = '';
			$text_style .= 'font-size: '.$text_css['font-size'].'px; ';
			$text_style .= 'font-weight: '.$text_css['font-weight'].'; ';
			$text_style .= 'font-style: '.$text_css['font-style'].'; ';
			$text_style .= 'text-transform: '.$text_css['text-transform'].'; ';
			$text_style .= 'color: #'.$text_css['color'].'; ';
			
		?>
			<li>
				<<?=$slide_tag?> class="offer-slide" <? if($slide_bg) {?>style="background: url('<?=base_url('assets/uploads/slider/'.$slide['img']);?>') no-repeat center"<? } ?>>
				<? if($slide['showText'] == 1 or $slide['showBtn'] == 1) { ?>
					<div class="scontent" style="<?=$slide_style;?>">
						<? if($slide['showText'] == 1) { ?>
							<div class="stext">
								<div class="title" style="<?=$title_style;?>"><?=$slide['title'];?></div>
								<div class="text" style="<?=$text_style;?>"><?=nl2br($slide['text']);?></div>
							</div>
						<? } ?>
						<? if($slide['showBtn'] == 1) { ?>
							<div class="sbtn">
								<span class="btn_a"><?=$slide['btnText'];?></span>
							</div>
						<? } ?>
					</div>
				<? } ?>
				<<?=$slide_tag_close;?>>
			</li>
		<? } ?>
		</ul>
	</div>
	<? if(count($slider) > 1) { ?>
		<?/*<span class="offer-btn _prev" id="offerPrev" onclick="offer.move(-1)"><?=fa('chevron-left');?></span>
		<span class="offer-btn _next" id="offerNext" onclick="offer.move(1)"><?=fa('chevron-right');?></span>*/?>
		
		<ul class="offer-nav" id="offerNav">
		<? for($i = 0; $i < count($slider); $i++) { ?>
			<li onclick="offer.pos(<?=$i;?>)"></li>
		<? } ?>
		</ul>
		
		<script>
			var offer = new TINY.slider.slide('offer',{
				id: 'offerSlider',
				auto: 10,
				resume: true,
				navid: 'offerNav',
				activeclass: 'current'
				//left:'offerPrev',
				//right:'offerNext'
			}); 
		</script>
	<? } ?>
</div>