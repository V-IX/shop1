<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
		<h1 class="page-title"><?=$pageinfo['title'];?></h1>
		<? if($pageinfo['brief']) { ?><div class="page-brief"><?=$pageinfo['brief'];?></div><? } ?>
	</div>
</section>

<section class="news">
	<div class="wrapper">
		<? if(empty($items)) { ?>
		
			<div class="catalog-empty">
				В разделе нет записей. <a href="<?=base_url();?>">Перейти в на главную</a>.
			</div>
		
		<? } else { ?>
		
			<ul class="news-list clearfix">
			<? $i = 1; foreach($items as $item) { ?>
				<li>
					<a href="<?=base_url(uri(1).'/'.$item['alias']);?>" class="news-item">
						<div class="img">
							<?=check_img('assets/uploads/'.uri(1).'/thumb/'.$item['img'], array('alt' => $item['mTitle']), 'publication.png');?>
							<span class="zoom"><?=fa('eye');?></span>
						</div>
						<div class="date"><?=translate_date($item['addDate']);?></div>
						<div class="descr">
							<div class="title"><?=$item['title'];?></div>
							<div class="brief"><?=$item['brief'];?></div>
							<div class="news-more"><span>Читать полностью</span></div>
						</div>
					</a>
				</li>
				<? if($i%3 == 0) { ?><li class="floater"></li><? } ?>
			<? $i++;} ?>
			</ul>
			<?=$this->pagination->create_links();?>
		
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