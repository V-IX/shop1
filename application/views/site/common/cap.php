<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ru">

<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	
	<title><?=$seo['title'];?></title>
	<meta name="keywords" content="<?=$seo['keywords'];?>" />
	<meta name="description" content="<?=$seo['description'];?>" />
	<meta name="viewport" content="width=1000" />
	
	<?=link_tag('assets/plugins/font-awesome/css/font-awesome.min.css');?>
	<?=link_tag('assets/plugins/font-museo/font.css');?>
	<?=link_tag('assets/site/css/reset.css');?>
	<?=link_tag('assets/site/css/template.css');?>
	<?=link_tag('assets/site/css/content.css');?>
	
	<?=link_tag('favicon.ico', 'shortcut icon', 'image/ico');?>
	<?=link_tag('favicon.ico', 'shortcut', 'image/ico');?>
	
</head>
<body class="cap">
	<div class="cap-form">
		<div class="row">
			<div class="col-4">
				<?=img('assets/uploads/settings/'.$siteinfo['img']);?>
			</div>
			<div class="col-8">
				<div class="top mb10">
					<h1><?=$siteinfo['title'];?></h1>
				</div>
				<hr/>
				<div class="bottom">
					<div class="title h3 mb5"><?=$siteinfo['capTitle'];?></div>
					<div class="text h5 text-gray"><?=nl2br($siteinfo['capDescr']);?></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>