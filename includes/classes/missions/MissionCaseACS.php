<?php

/**
 *  2Moons
 *  Copyright (C) 2012 Jan Kr�pke
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @package 2Moons
 * @author Jan Kr�pke <info@2moons.cc>
 * @copyright 2012 Jan Kr�pke <info@2moons.cc>
 * @license http://www.gnu.org/licenses/gpl.html GNU GPLv3 License
 * @version 1.7.0 (2012-12-31)
 * @info $Id: MissionCaseACS.php 2406 2012-10-31 10:27:25Z slaver7 $
 * @link http://2moons.cc/
 */

class MissionCaseACS extends MissionFunctions
{
		
	function __construct($Fleet)
	{
		$this->_fleet	= $Fleet;
	}
	
	function TargetEvent()
	{
		$this->setState(FLEET_RETURN);
		$this->SaveFleet();
		return;
	}
	
	function EndStayEvent()
	{
		return;
	}
	
	function ReturnEvent()
	{
		global $LANG;
		$LNG		= $LANG->GetUserLang($this->_fleet['fleet_owner']);
		
		$TargetName	= $GLOBALS['DATABASE']->getFirstCell("SELECT name FROM ".PLANETS." WHERE id = ".$this->_fleet['fleet_end_id'].";");
		$Message 	= sprintf($LNG['sys_fleet_won'], $TargetName, GetTargetAdressLink($this->_fleet, ''), pretty_number($this->_fleet['fleet_resource_metal']), $LNG['tech'][901], pretty_number($this->_fleet['fleet_resource_crystal']), $LNG['tech'][902], pretty_number($this->_fleet['fleet_resource_deuterium']), $LNG['tech'][903] );
		SendSimpleMessage($this->_fleet['fleet_owner'], 0, $this->_fleet['fleet_end_time'], 3, $LNG['sys_mess_tower'], $LNG['sys_mess_fleetback'], $Message);

		$this->RestoreFleet();
	}
}

?>