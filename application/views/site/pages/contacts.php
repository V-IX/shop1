<section class="page-top">
	<div class="wrapper">
		<?=$this->breadcrumbs->create_links();?>
		<hr class="page-top-sep" />
		<h1 class="page-title"><?=$pageinfo['title'];?></h1>
		<? if($pageinfo['brief']) { ?><div class="page-brief"><?=$pageinfo['brief'];?></div><? } ?>
	</div>
</section>

<section class="contacts">
	<div class="wrapper">
		<? if($siteinfo['map']) { ?>
			<div class="map mb30"><?=htmlspecialchars_decode($siteinfo['map']);?></div>
		<? } ?>
		<div class="row">
			<div class="col-5">
				<div class="h3 bold mb20">Контакты</div>
				<ul class="contacts-list mb30">
					<li class="phone"><?=phone($siteinfo['phone'], $siteinfo['phoneMask']);?></li>
					<? if($siteinfo['phone2']) { ?><li class="phone"><?=phone($siteinfo['phone2'], $siteinfo['phone2Mask']);?></li><? } ?>
					<? if($siteinfo['phoneCity']) { ?><li class="phone"><?=phone($siteinfo['phoneCity'], $siteinfo['phoneCityMask']);?></li><? } ?>
					<li class="email mt15"><?=fa('envelope-o fa-fw mr5');?> <?=$siteinfo['email'];?></li>
					<? if($siteinfo['skype']) { ?><li class="skype"><?=fa('skype fa-fw mr5');?> <?=$siteinfo['skype'];?></li><? } ?>
				</ul>				
				<div class="h3 bold mb20">Реквизиты</div>
				<div class="h5 mb10">
					<?=$siteinfo['adres'];?><br/>
					<?=$siteinfo['time'];?>
				</div>
				<div class="text-gray h5">
					<div class="mb5 bold"><?=$siteinfo['owner'];?></div>
					<?=nl2br($siteinfo['details']);?>
				</div>
			</div>
			<div class="col-1"></div>
			<div class="col-6">
				<div class="h3 bold mb20">Обратная связь</div>
				<?=form_open('contacts/ajaxSend', array('data-toggle' => 'ajaxForm'));?>
					<div class="row form-group">
						<div class="col-6"><input type="text" name="name" class="form-input" data-rules="required" placeholder="Представьтесь, пожалуйста *" /></div>
						<div class="col-6"><input type="text" name="phone" class="form-input" data-rules="required" placeholder="Контакты *" /></div>
					</div>
					<div class="form-group">
						<textarea class="form-input" name="text" rows="5" placeholder="Комментарий"></textarea>
					</div>
					<button class="btn btn-orange w150">Отправить</button>
					<input type="hidden" name="title" value="Контакты" />
				<?=form_close();?>
			</div>
		</div>
	</div>
</section>

<? if(strip_tags($pageinfo['text']) != '') { ?>

<section class="page-text">
	<div class="wrapper">
		<div class="text-editor"><?=$pageinfo['text'];?></div>
	</div>
</section>

<? } ?>