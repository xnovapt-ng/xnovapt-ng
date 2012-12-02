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
 * @info $Id: MissionCaseMIP.php 2406 2012-10-31 10:27:25Z slaver7 $
 * @link http://2moons.cc/
 */

class MissionCaseMIP extends MissionFunctions
{
	function __construct($Fleet)
	{
		$this->_fleet	= $Fleet;
	}
	
	function TargetEvent()
	{
		global $resource, $reslist, $LANG;
		$SQL = "";
		foreach($reslist['defense'] as $Element)
		{
			$SQL	.= PLANETS.".".$resource[$Element].", ";
		}
			
		$QryTarget		 	= "SELECT ".USERS.".lang, ".USERS.".defence_tech, ".PLANETS.".id, ".PLANETS.".name, ".PLANETS.".id_owner, ".substr($SQL, 0, -2)."
							   FROM ".PLANETS.", ".USERS."
							   WHERE ".PLANETS.".id = '".$this->_fleet['fleet_end_id']."' AND 
							   ".PLANETS.".id_owner = ".USERS.".id;";
		$TargetInfo			= $GLOBALS['DATABASE']->getFirstRow($QryTarget);

		if($this->_fleet['fleet_end_type'] == 3)
		{
			$TargetInfo[$resource[502]]	= $GLOBALS['DATABASE']->getFirstCell("SELECT ".$resource[502]." FROM ".PLANETS." WHERE id_luna = ".$this->_fleet['fleet_end_id'].";");
		}

		$OwnerInfo			= $GLOBALS['DATABASE']->getFirstRow("SELECT lang, military_tech FROM ".USERS." WHERE id = '".$this->_fleet['fleet_owner']."';");					   
		$Target				= (!in_array($this->_fleet['fleet_target_obj'], $reslist['defense']) || $this->_fleet['fleet_target_obj'] == 502 || $this->_fleet['fleet_target_obj'] == 0) ? 401 : $this->_fleet['fleet_target_obj'];

        $TargetDefensive    = array();

		foreach($reslist['defense'] as $Element)		
		{
			$TargetDefensive[$Element]	= $TargetInfo[$resource[$Element]];
		}
		
		unset($TargetDefensive[502]);
		
		$message 			= "";
		$SQL 				= "";
			
		$LNG				= $LANG->GetUserLang($GLOBALS['CONFIG'][$this->_fleet['fleet_universe']]['lang'], array('L18N', 'FLEET', 'TECH'));
				
		require_once('calculateMIPAttack.php');	
		if ($TargetInfo[$resource[502]] >= $this->_fleet['fleet_amount'])
		{
			$message 	= $LNG['sys_irak_no_att'];
			if($this->_fleet['fleet_end_type'] == 3)
				$SQL .= "UPDATE ".PLANETS." SET ".$resource[502]." = ".$resource[502]." - ".$this->_fleet['fleet_amount']." WHERE id_luna = ".$TargetInfo['id'].";";
			else 
				$SQL .= "UPDATE ".PLANETS." SET ".$resource[502]." = ".$resource[502]." - ".$this->_fleet['fleet_amount']." WHERE id = ".$TargetInfo['id'].";";
		}
		else
		{
			if ($TargetInfo[$resource[502]] > 0)
			{
				if($this->_fleet['fleet_end_type'] == 3)
					$GLOBALS['DATABASE']->query("UPDATE ".PLANETS." SET ".$resource[502]." = 0 WHERE id_luna = " . $TargetInfo['id'].";");
				else
					$GLOBALS['DATABASE']->query("UPDATE ".PLANETS." SET ".$resource[502]." = 0 WHERE id = " . $TargetInfo['id'].";");
			}
			
			$irak 	= calculateMIPAttack($TargetInfo["defence_tech"], $OwnerInfo["military_tech"], $this->_fleet['fleet_amount'], $TargetDefensive, $Target, $TargetInfo[$resource[502]]);
			ksort($irak, SORT_NUMERIC);

            foreach ($irak as $Element => $destroy)
			{
				if(empty($Element))
					continue;
				
				$message .= $LNG['tech'][$Element]." (- ".$destroy.")<br>";
				
				if ($destroy == 0)
					continue;
					
				if(in_array($Element, $reslist['one']))
					$SQL .= "UPDATE ".PLANETS." SET ".$resource[$Element]." = '0' WHERE id = ".$TargetInfo['id'].";";
				else
					$SQL .= "UPDATE ".PLANETS." SET ".$resource[$Element]." = ".$resource[$Element]." - ".$destroy." WHERE id = ".$TargetInfo['id'].";";
			}
		}
				
		$UserPlanet 		= $GLOBALS['DATABASE']->getFirstRow("SELECT name FROM ".PLANETS." WHERE id = ".$this->_fleet['fleet_start_id'].";");
		$OwnerLink			= $UserPlanet['name']." [".$this->_fleet['fleet_start_galaxy'].":".$this->_fleet['fleet_start_system'].":".$this->_fleet['fleet_start_planet']."]";
		$TargetLink 		= $TargetInfo['name']." [".$this->_fleet['fleet_end_galaxy'].":".$this->_fleet['fleet_end_system'].":".$this->_fleet['fleet_end_planet']."]";
		$Message			= sprintf($LNG['sys_irak_mess'], $this->_fleet['fleet_amount'], $OwnerLink, $TargetLink).(empty($message) ? $LNG['sys_irak_no_def'] : $message);
	
		SendSimpleMessage($this->_fleet['fleet_owner'], 0, $this->_fleet['fleet_start_time'], 3, $LNG['sys_mess_tower'], $LNG['sys_irak_subject'] , $Message);
		SendSimpleMessage($this->_fleet['fleet_target_owner'], 0, $this->_fleet['fleet_start_time'], 3, $LNG['sys_mess_tower'], $LNG['sys_irak_subject'] , $Message);
		$SQL				.= "DELETE FROM ".FLEETS." WHERE fleet_id = '" . $this->_fleet['fleet_id'] . "';";
		$GLOBALS['DATABASE']->multi_query($SQL);
	}
	
	function EndStayEvent()
	{
		return;
	}
	
	function ReturnEvent()
	{
		return;
	}
}

?>