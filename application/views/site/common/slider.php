<div class="offer-slider">
<div class="wrapper">
    <div class="flexslider" id="offerSlider">
        <ul class="slides">
            <? foreach($slider as $slide) { ?>
                <? $tag_class = 'offer-slide text-'.$slide['num']; ?>
                <? $tag_open = $slide['link'] != '' ? '<a href="'.base_url($slide['link']).'" class="'.$tag_class.'" >' : '<div class="'.$tag_class.'">';?>
				<? $tag_close = $slide['link'] != '' ? '</a>' : '</div>'; ?>
                <?                          
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
        <?=$tag_open;?>
        <div class="img" style="background-image: url('')">
            <img src="<?=base_url('assets/uploads/slider/'.$slide['img']);?>" alt="<?=htmlspecialchars($slide['title']);?>">
        </div>
        <? if ($slide['showText']){ ?>
                <div class="scontent" style="<?=$slide_style;?>">
                <div class="title" style="<?=$title_style;?>">
                            <?=$slide['title'];?>
                </div>
                <? if($slide['text']){ ?>
                    <div class="text" style="<?=$text_style;?>">
                        <?=nl2br($slide['text']);?>
                    </div>
                <? } ?>
                <? if($slide['showBtn']){ ?>
                    <div class="sbtn">
                        <span class="btn_a"><?=$slide['btnText'];?>
                        </span>
                    </div>
                <? } ?>
                </div>
        <? } ?>
        <?=$tag_close;?>
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
