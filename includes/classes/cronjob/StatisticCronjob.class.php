<?php

/**
 *  2Moons
 *  Copyright (C) 2011 Jan Kr�pke
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
 * @copyright 2009 Lucky
 * @copyright 2011 Jan Kr�pke <info@2moons.cc>
 * @license http://www.gnu.org/licenses/gpl.html GNU GPLv3 License
 * @version 1.7.0 (2011-12-10)
 * @info $Id: StatisticCronjob.class.php 2461 2012-11-24 16:00:50Z slaver7 $
 * @link http://code.google.com/p/2moons/
 */


class StatisticCronjob
{
	function run()
	{
		require_once(ROOT_PATH.'includes/classes/class.statbuilder.php');
		$stat			= new Statbuilder();
		$result			= $stat->MakeStats();
		Config::update(array(
			'stat_last_update'	=> TIMESTAMP			
		));
	}
}
?>