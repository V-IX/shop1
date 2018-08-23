<?
	$_label = array(
		'news' => array('link' => 'все скидки и акции', 'other' => 'Другие акции и скидки'),
		'articles' => array('link' => 'все статьи', 'other' => 'Другие статьи'),
	);
?>

<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
	</div>
</section>

<section class="news">
	<div class="wrapper">
		<div class="news-left">
			<h1 class="news-title mb20"><?=$item['title'];?></h1>
			<div class="text-gray mb20"><?=translate_date($item['addDate']);?></div>
			<div class="text-editor mb30"><?=$item['text'];?></div>
			<div class="row">
				<div class="col-6 mt5 text-gray">
					<a href="<?=base_url(uri(1));?>" class="news-back"><?=$_label[uri(1)]['link'];?></a>
				</div>
				<div class="col-6">
					<div class="social text-right">
						<div class="social-label mr10">Поделиться:</div>
						<div class="social-init" data-toggle="social"></div>
						<?=script('assets/plugins/share42/share.js');?>
					</div>
				</div>
			</div>
		</div>
		<div class="news-right">
			<div class="h3 medium mb20"><?=$_label[uri(1)]['other'];?>:</div>
			<ul class="news-other">
			<? foreach($items as $new) { ?>
				<li>
					<a href="<?=base_url(uri(1).'/'.$new['alias']);?>" class="news-item">
						<div class="img">
							<?=check_img('assets/uploads/'.uri(1).'/thumb/'.$new['img'], array('alt' => $new['mTitle']), 'publication.png');?>
							<span class="zoom"><?=fa('eye');?></span>
						</div>
						<div class="date"><?=translate_date($new['addDate']);?></div>
						<div class="descr">
							<div class="title"><?=$new['title'];?></div>
							<div class="brief"><?=$new['brief'];?></div>
							<div class="news-more"><span>Читать полностью</span></div>
						</div>
					</a>
				</li>
			<? } ?>
			</ul>
		</div>
	</div>
</section>