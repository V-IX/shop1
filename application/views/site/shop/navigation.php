<? function navs($item) { ?>
		<li>
			<a href="<?=base_url('catalog/'.$item['path']);?>" class="cmenu-item <?=$item['toggle'] == 'open' ? '_open' : '';?> <?=$item['toggle'] == 'current' ? '_open _current' : '';?>" style="padding-left: <?=$item['level'] * 10 + 5;?>px;">
				<?=$item['title'];?>
				<? if(isset($item['childs'])) { ?>
				<span class="toggle">
					<?=fa('chevron-left fa-fw');?>
					<?=fa('chevron-down fa-fw');?>
				</span>
				<? } ?>
			</a>
			<? if(isset($item['childs']) and ($item['toggle'] == 'current' or $item['toggle'] == 'open')) { ?>
			<ul class="cmenu-child">
				<? foreach($item['childs'] as $child) { ?>
					<?=navs($child);?>
				<? } ?>
			</ul>
			<? } ?>
		</li>
<? } ?>

<nav class="cmenu">
	<div class="cmenu-title">Каталог товаров</div>
	<div class="cmenu-list">
	<? foreach($navs as $nav) { ?>
		<?=navs($nav);?>
	<? } ?>
	</div>
</nav>