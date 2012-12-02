
            <!-- HEADER -->
            <!-- ONET 4 POLAND -->
            <div id="boxBG">
				<div id="box">
					<a name="anchor"></a>
					<div id="info" class="header normal">
						<a href="game.php?page=overview">
							<img src="redesign_images/preload.gif" id="logoLink">
						</a>
						<div id="star"></div>
						<div id="star1"></div>
						<div id="star2"></div>
						<div id="clearAdvice"></div>
						<a id="changelog_link" href="game.php?page=changelog">
							{$LNG.lm_changelog}
						</a>
						<div id="bar">
							<ul>
								<li id="playerName">{$LNG.gl_player}:
									<span class="textBeefy">GreenKnight</span>
								</li>
								{if isModulAvalible($smarty.const.MODULE_BUDDYLIST)}
									<li>
										<a class="overlay" accesskey="" href="game.php?page=buddyList" data-overlay-title="{$LNG.lm_buddylist}" data-overlay-class="buddies">{$LNG.lm_buddylist}</a>
									</li>
								{/if}
								{if isModulAvalible($smarty.const.MODULE_NOTICE)}
									<li>
										<a href="javascript:OpenPopup('?page=notes', 'notes', 720, 300);" class="overlay" data-overlay-title="{$LNG.lm_notes}" data-overlay-class="notes" accesskey="">{$LNG.lm_notes}</a>
									</li>
								{/if}
								{if isModulAvalible($smarty.const.MODULE_STATISTICS)}
									<li>
										<a href="game.php?page=statistics" accesskey="">{$LNG.lm_statistics}</a>
										(437)
									</li>
								{/if}
								{if isModulAvalible($smarty.const.MODULE_SEARCH)}
								<li>
									<a class="overlay" href="game.php?page=search" data-overlay-title="{$LNG.lm_search}" accesskey="">{$LNG.lm_search}</a>
								</li>
								{/if}
								<li>
									<a href="game.php?page=settings" accesskey="">{$LNG.lm_options}</a>
								</li>
								{if isModulAvalible($smarty.const.MODULE_SUPPORT)}
									<li>
										<a href="game.php?page=ticket" target="_blank">{$LNG.lm_support}</a>
									</li>
								{/if}
								{if isModulAvalible($smarty.const.MODULE_CHAT)}
									<li>
										<a href="game.php?page=chat" target="_blank">{$LNG.lm_chat}</a>
									</li>
								{/if}
								
								<li>
									<a href="game.php?page=logout">{$LNG.lm_logout}</a>
								</li>
								<li class="OGameClock">03.11.2012 <span>11:08:45</span></li>
							</ul>
						</div>
						<ul id="resources">
							{foreach $resourceTable as $resourceID => $resouceData}
								<li id="{$resouceData.name}_box" class="{$resouceData.name} tooltipHTML" title="">
									<img src="{$dpath}images/{$resouceData.name}.gif" alt=>
									<span class="value">
										{if !isset($resouceData.current)}
										{$resouceData.current = $resouceData.max + $resouceData.used}
											<td class="res_current tooltip" data-tooltip-content="{$resouceData.current|number}&nbsp;/&nbsp;{$resouceData.max|number}">
												<span id="resources_{$resouceData.name}" {if $resouceData.current < 0} class="overmark"{/if}>{shortly_number($resouceData.current)}&nbsp;/&nbsp;{shortly_number($resouceData.max)}</span>
											</td>
										{else}
											<td class="res_current tooltip" id="current_{$resouceData.name}" data-real="{$resouceData.current}" data-tooltip-content="{$resouceData.current|number}">
												<span id="resources_{$resouceData.name}" class="undermark">{shortly_number($resouceData.current)}</span>
											</td>
										{/if}
									</span>
								</li>
							{/foreach}
						</ul>
					
					
						<div id="officers" class="all">
							<a href="http://uni103.ogame.com.pt/game/index.php?page=premium&amp;openDetail=2" class="tooltipHTML on  pic1 js_hideTipOnMobile" title="Adquire o comandante|Continua activo durante mais de 4 dias">
								<img src="redesign_images/3e567d6f16d040326c7a0ea29a4f41.gif" height="30" width="30">
							</a>
							<a href="http://uni103.ogame.com.pt/game/index.php?page=premium&amp;openDetail=3" class="tooltipHTML on  pic2 js_hideTipOnMobile" title="Adquire o almirante|Continua activo durante mais de 4 dias">
								<img src="redesign_images/3e567d6f16d040326c7a0ea29a4f41.gif" height="30" width="30">
							</a>
							<a href="http://uni103.ogame.com.pt/game/index.php?page=premium&amp;openDetail=4" class="tooltipHTML on  pic3 js_hideTipOnMobile" title="">
								<img src="redesign_images/3e567d6f16d040326c7a0ea29a4f41.gif" height="30" width="30">
							</a>
							<a href="http://uni103.ogame.com.pt/game/index.php?page=premium&amp;openDetail=5" class="tooltipHTML on  pic4 js_hideTipOnMobile" title="Adquire o geólogo|Continua activo durante mais de 4 dias">
								<img src="redesign_images/3e567d6f16d040326c7a0ea29a4f41.gif" height="30" width="30">
							</a>
							<a href="http://uni103.ogame.com.pt/game/index.php?page=premium&amp;openDetail=6" class="tooltipHTML on  pic5 js_hideTipOnMobile" title="Adquire cientista|Continua activo durante mais de 4 dias">
								<img src="redesign_images/3e567d6f16d040326c7a0ea29a4f41.gif" height="30" width="30">
							</a>
						</div>
						<div id="message-wrapper">
							{if isModulAvalible($smarty.const.MODULE_MESSAGES)}
								<div>
									<a href="game.php?page=messages" id="message_alert_box" class="tooltip js_hideTipOnMobile " title="{$LNG.lm_messages}{nocache}{if $new_message > 0} ({$new_message}){/if}{/nocache}">
										<span>{nocache}{$new_message}{/nocache}</span>
									</a>
								</div>
							{/if}
							<div id="messages_collapsed" style="position:relative;">
								<div id="eventboxFilled" class="eventToggle eventboxHover" style="">
									<table id="eventtype" style="border-collapse: collapse;" border="0" width="100%">
										<tbody>
											<tr>
												<td class="friendly col1" width="152">Próprias Missões: <span id="eventFriendly">1</span></td>
												<td class="neutral col2" width="156">Missões Amigáveis: <span id="eventNeutral">0</span></td>
												<td class="hostile col3" width="152">Missões Hostis: <span id="eventHostile">0</span></td>
											</tr>
										</tbody>
									</table>
									<table id="eventdetails" style="border-collapse: collapse;" border="0" width="100%">
										<tbody>
											<tr id="eventClass" class="Transferir">
												<td class="col1" width="152"><div class="countdown" id="tempcounter" name="countdown">4m 27s</div></td>
												<td class="col2" width="208"><div class="text" id="eventContent">Transferir</div></td>
												<td class="col3" width="100">
													<a id="js_eventDetailsClosed" class="tooltipRight js_hideTipOnMobile" href="javascript:void(0);" title=""></a>
													<a id="js_eventDetailsOpen" class="tooltipRight open js_hideTipOnMobile" href="javascript:void(0);" title="Menos detalhes"></a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="eventboxLoading" class="textCenter textBeefy" style="display: none;">
									<img src="redesign_images/3f9884806436537bdec305aa26fc60.gif" height="16" width="16">A carregar...
								</div>
								<div id="eventboxBlank" class="textCenter" style="display: none;">
									Sem movimentos de frota
								</div>
							</div>
							<div id="attack_alert" style="visibility:hidden;">
								<a href="http://uni103.ogame.com.pt/game/index.php?page=eventList" class="tooltip eventToggle" title="Ataque!">
									<img src="redesign_images/3e567d6f16d040326c7a0ea29a4f41.gif" height="13" width="25">
								</a>
							</div>
							<br class="clearfloat">
						</div><!-- #message-wrapper -->
						{if isModulAvalible($smarty.const.MODULE_SIMULATOR)}
							<div id="helper">
								<a class="tooltip" href="game.php?page=battleSimulator" title="{$LNG.lm_battlesim}">
								</a>
							</div>
						{/if}
						<div id="selectedPlanetName" class="textCenter">Lua</div>
					</div><!-- Info -->
					<!-- END HEADER -->
