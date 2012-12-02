<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
		<meta name="generator" content="2Moons {$VERSION}">
		<!-- 
			This website is powered by 2Moons {$VERSION}
			2Moons is a free Space Browsergame initially created by Jan Kröpke and licensed under GNU/GPL.
			2Moons is copyright 2009-2012 of Jan Kröpke. Extensions are copyright of their respective owners.
			Information and contribution at http://2moons.cc/
		-->
{if !empty($goto)}
		<meta http-equiv="refresh" content="{$gotoinsec};URL={$goto}">
{/if}
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="./styles/resource/css/base/jquery.css?v={$REV}">
		<link rel="stylesheet" type="text/css" href="./styles/resource/css/base/jquery.fancybox.css?v={$REV}">
		<link rel="stylesheet" type="text/css" href="./styles/resource/css/base/validationEngine.jquery.css?v={$REV}">
		<link rel="stylesheet" type="text/css" href="{$dpath}formate.css?v={$REV}">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/27e7d9361f521de295adc31a17f18d.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/bc3611c3b23d0e6ef0af3d274c7742.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/eb5e885643e9f543cc411153b6e3cf.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/6a58c67b8e5522e076a6d149e6a50d.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/cb28c47303241b0cf1442b198173db.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/909b978c2cceaa3eeaf2f4557c9b58.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/a7ef6ad5d7d3c948a6cb91169b76e1.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/c21561691f76f9d725b98178c4a6d3.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/9ddf218bc64c6ac74321814ccdde11.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/302885bbd703a45459325c8391e240.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/33f3cf319c9e010ccbc3d203878750.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/8ff2cd93e9e2018ce8861f7946545f.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/176f6cad2847ec19e2ecbbe64842ba.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/1921384a0ba9a441f76fc13b7a0090.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/24beedb66361f36186048d7b53317e.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/7f173b015787554bc6314d4554635b.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/d7b69e255750584a44ac43ad673956.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/e5c67847e9fb89adca9903db8a8489.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/52b8b331794dd3d198fa19675ce212.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/ae42f02ec22ccbcab7ef3a3c3e6455.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/12105d086592d4d1a1ccf280be61b8.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/4da44644443bb4a5dc6fbff9e43438.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/bcf1c4fe1dd14943ed1b63ba32d60b.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/c84ccf96aa6f489345994ea278b422.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/5d5d122e139c886f90a5f95b7f5bd6.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/0510d5ca0f0fff0dbef580642c510a.css" media="screen">
		<link rel="stylesheet" type="text/css" href="{$dpath}REDESIGN/026fa98f0884b77c1d5170ca81490f.css" media="screen">
		<!--[if IE 8]>
		<link rel="stylesheet" type="text/css" href="http://gf3.geo.gfsrv.net/cdnb8/74c0a523541a9cf601066f3f27063d.css" media="screen" />
		<![endif]-->
		<!--[if lt IE 7 ]> <html lang="{$lang}" class="no-js ie6"> <![endif]-->
		<!--[if IE 7 ]>    <html lang="{$lang}" class="no-js ie7"> <![endif]-->
		<!--[if IE 8 ]>    <html lang="{$lang}" class="no-js ie8"> <![endif]-->
		<!--[if IE 9 ]>    <html lang="{$lang}" class="no-js ie9"> <![endif]-->
		<!--[if (gt IE 9)|!(IE)]><!--> <html lang="{$lang}" class="no-js"> <!--<![endif]-->		
		<title>{block name="title"} - {$uni_name} - {$game_name}{/block}</title>
		<script type="text/javascript">
			var ServerTimezoneOffset = {$Offset};
			var serverTime 	= new Date({$date.0}, {$date.1 - 1}, {$date.2}, {$date.3}, {$date.4}, {$date.5});
			var startTime	= serverTime.getTime();
			var localTime 	= serverTime;
			var localTS 	= startTime;
			var Gamename	= document.title;
			var Ready		= "{$LNG.ready}";
			var Skin		= "{$dpath}";
			var Lang		= "{$lang}";
			var head_info	= "{$LNG.fcm_info}";
			var auth		= {$authlevel|default:'0'};
			var days 		= {$LNG.week_day|json|default:'[]'} 
			var months 		= {$LNG.months|json|default:'[]'} ;
			var tdformat	= "{$LNG.js_tdformat}";
			var queryString	= "{$queryString|escape:'javascript'}";

			setInterval(function() {
				serverTime.setSeconds(serverTime.getSeconds()+1);
			}, 1000);
		</script>
		<script type="text/javascript" src="./scripts/base/jquery.js?v={$REV}"></script>
		<script type="text/javascript" src="./scripts/base/jquery.ui.js?v={$REV}"></script>
		<script type="text/javascript" src="./scripts/base/jquery.cookie.js?v={$REV}"></script>
		<script type="text/javascript" src="./scripts/base/jquery.fancybox.js?v={$REV}"></script>
		<script type="text/javascript" src="./scripts/base/jquery.validationEngine.js?v={$REV}"></script>
		<script type="text/javascript" src="./scripts/l18n/validationEngine/jquery.validationEngine-{$lang}.js?v={$REV}"></script>
		<script type="text/javascript" src="./scripts/base/tooltip.js?v={$REV}"></script>
		<script type="text/javascript" src="./scripts/game/base.js?v={$REV}"></script>
{foreach item=scriptname from=$scripts}
		<script type="text/javascript" src="./scripts/game/{$scriptname}.js?v={$REV}"></script>
{/foreach}
		{block name="script"}{/block}
		<script type="text/javascript">
			$(function() {
				{$execscript}
			});
		</script>
	</head>
    <body id="{$smarty.get.page|htmlspecialchars|default:'overview'}" class="{$bodyclass}">
        <div class="contentBoxBody">
            <noscript>
                <div id="messagecenter">
                    <div id="javamessagebox">
                        <span class="overmark">
                            <strong>Por favor activa o JavaScript para a página poder correr na totalidade.</strong>
                        </span>
                    </div>
                </div>
            </noscript>
            <div id="ie_message">
                <p><img src="redesign_images/e621aa80dbd4746a9f4f114c8d3853.gif" height="16" width="16">O
					 browser que estás a usar não está actualizado portanto poderão haver 
					alguns problemas gráficos. Por favor, actualiza o teu browser para uma 
					nova versão: <a href="http://www.microsoft.com/upgrade/">Internet Explorer</a> ou <a href="http://www.mozilla-europe.org/de/firefox/">Mozilla Firefox</a>
				</p>
            </div>
            <script type="text/javascript">isIE = false;</script>
            <!--[IF IE]>
                <script type="text/javascript">
                    isIE = true;
                </script>
            <![endif]-->
