
					<!-- LEFTMENU -->
					<div id="links">
						<ul id="menuTable" class="leftmenu">
							<li>
								<span class="menu_icon">
									<a href="game.php?page=eventList" class="eventToggle tooltipRight js_hideTipOnMobile" target="_self" title="Eventos">
										<img class="mouseSwitch" src="redesign_images/7b643c6864d216bee72ce404e74072.gif" rel="http://gf1.geo.gfsrv.net/cdn63/dbe21bc0819f9e6f5a626cf901e4c7.gif" height="29" width="38">
									</a>
								</span>
								<a class="menubutton  selected" href="game.php?page=overview" accesskey="" target="_self">
									<span class="textlabel">{$LNG.lm_overview}</span>
								</a>
							</li>
							{if isModulAvalible($smarty.const.MODULE_BUILDING)}
								<li>
									{if isModulAvalible($smarty.const.MODULE_RESSOURCE_LIST)}
										<span class="menu_icon">
											<a href="game.php?page=resources" class="tooltipRight js_hideTipOnMobile" target="_self" title="{$LNG.lm_resources}">
												<img class="mouseSwitch" src="redesign_images/854c5764c231234efd3ebb0caeda37.gif" rel="http://gf1.geo.gfsrv.net/cdn0c/6729ed49cd16e83b38d374b600b38e.gif" height="29" width="38">
											</a>
										</span>
									{/if}
									<a class="menubutton " href="game.php?page=buildings" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_buildings}</span>
									</a>
								</li>
							{/if}
							<li>
								<span class="menu_icon">
									<img src="redesign_images/4c01463c41c7503f24afd2d90804c6.gif" height="29" width="38">
								</span>
								<a class="menubutton " href="game.php?page=station" accesskey="" target="_self">
									<span class="textlabel">Instalações</span>
								</a>
							</li>
							{if isModulAvalible($smarty.const.MODULE_TRADER)}
								<li>
									{if isModulAvalible($smarty.const.MODULE_FLEET_TRADER)}
										<span class="menu_icon">
											<a href="game.php?page=fleetDealer" class="trader tooltipRight js_hideTipOnMobile" target="_self" title="{$LNG.lm_fleettrader}">
												<img class="mouseSwitch" src="redesign_images/a3a00daf8e8344790bbfbd377d5794.gif" rel="http://gf1.geo.gfsrv.net/cdncb/52a1c5180074e85d8343de56abb232.gif" height="29" width="38">
											</a>
										</span>
									{/if}
									<a class="menubutton premiumHighligt" href="game.php?page=trader" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_trader}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_RESEARCH)}
								<li>
									{if isModulAvalible($smarty.const.MODULE_TECHTREE)}
										<span class="menu_icon">
											<a href="game.php?page=techtree" class="overlay tooltipRight js_hideTipOnMobile" target="_blank" title="{$LNG.lm_technology}">
												<img class="mouseSwitch" src="redesign_images/46d133829e8b9e025470dd1d4ec79d.gif" rel="http://gf1.geo.gfsrv.net/cdn95/56516a3999238b42f65654906004d1.gif" height="29" width="38">
											</a>
										</span>
									{/if}
									<a class="menubutton " href="game.php?page=research" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_research}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_SHIPYARD_FLEET)}
								<li>
									<span class="menu_icon">
										<img src="redesign_images/8822e24278a0b4bdb0cb2b52cf7f4e.gif" height="29" width="38">
									</span>
									<a class="menubutton " href="game.php?page=shipyard&amp;mode=fleet" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_shipshard}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_SHIPYARD_DEFENSIVE)}
								<li>
									<span class="menu_icon">
										<img src="redesign_images/3a1b0e15ebce20dcea04da23eedbba.gif" height="29" width="38">
									</span>
									<a class="menubutton " href="game.php?page=shipyard&amp;mode=defense" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_defenses}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_TRADER)}
								<li>
									<span class="menu_icon">
										<a href="http://uni103.ogame.com.pt/game/index.php?page=movement" class="tooltipRight js_hideTipOnMobile" target="_self" title="Movimento de Frota">
											<img class="mouseSwitch" src="redesign_images/3306093fa95dd704a1420b192110e5.gif" rel="http://gf2.geo.gfsrv.net/cdn70/fca390c937463b33442bcb7b255d1f.gif" height="29" width="38">
										</a>
									</span>
									<a class="menubutton " href="game.php?page=fleetTable" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_fleet}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_GALAXY)}
								<li>
									<span class="menu_icon">
										<img src="redesign_images/11b32cf746afcdd4bc896373186a3d.gif" height="29" width="38">
									</span>
									<a class="menubutton " href="game.php?page=galaxy" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_galaxy}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_IMPERIUM)}
								<li>
									<span class="menu_icon">
										<img src="redesign_images/c01bc8256e563a37ada4ff86fbd0e8.gif" height="29" width="38">
									</span>
									<a class="menubutton " href="game.php?page=imperium" accesskey="" target="_blank">
										<span class="textlabel">{$LNG.lm_empire}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_ALLIANCE)}
								<li>
									<span class="menu_icon">
										<a href="game.php?page=alliance&mode=circular" class="tooltipRight js_hideTipOnMobile" target="_self" title="{$LNG.al_circular_message}">
											<img class="mouseSwitch" src="redesign_images/e95e882e8916c0be653cb7a57e9581.gif" rel="http://gf2.geo.gfsrv.net/cdndd/2a714b5e1d5709caaa29cb29a46747.gif" height="29" width="38">
										</a>
									</span>
									<a class="menubutton " href="game.php?page=alliance" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_alliance}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_OFFICIER) || isModulAvalible($smarty.const.MODULE_DMEXTRAS)}
								<li>
									<span class="menu_icon">
										<img src="redesign_images/e77402177b37bee59124d784aa81d5.gif" height="29" width="38">
									</span>
									<a class="menubutton premiumHighligt officers" href="game.php?page=officier" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_officiers}</span>
									</a>
								</li>
							{/if}
							{if isModulAvalible($smarty.const.MODULE_BATTLEHALL)}
								<li>
									<a class="menubutton premiumHighligt" href="game.php?page=battleHall" accesskey="" target="_self">
										<span class="textlabel">{$LNG.lm_topkb}</span>
									</a>
								</li>
							{/if}
							{if $authlevel > 0}
								<li>
									<a class="menubutton " href="./admin.php" style="color:lime">
										{$LNG.lm_administration}
									</a>
								</li>
							{/if}
						</ul>
						<div class="adviceWrapper">
							<div id="advice-bar">
								<a href="http://uni103.ogame.com.pt/game/index.php?page=announcement&amp;ajax=1&amp;birthday=1" class="announcement overlay advice tooltipRight js_hideTipOnMobile" title="Semanas de Aniversário do OGame" data-overlay-title="" data-overlay-class="announcement">
									<img src="redesign_images/acfefc53f8c112a7f4585983a4140e.png" alt="" height="32" width="32">
								</a>
							</div>
						</div>
						<div id="toolLinksWrapper">
							<ul id="menuTableTools" class="leftmenu"></ul>
						</div>
						<br class="clearfloat">
					</div>
					<!-- END LEFTMENU -->