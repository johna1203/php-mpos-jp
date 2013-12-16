<?php
/**
 * @copyright 2010 MAPIX Technologies Ltd, UK, http://mapix.com/
 * @license http://en.wikipedia.org/wiki/BSD_licenses  BSD License
 * @package Smarty
 * @subpackage PluginsModifier
 */

function smarty_modifier_seconds_to_words($seconds) {
  if ($seconds < 0) throw new Exception("Can't do negative numbers!");
  if ($seconds == 0) return _("zero seconds");
  if ($seconds < 1) return _("less than a second");

  $hours = intval($seconds/pow(60,2));
  $minutes = intval($seconds/60)%60;
  $seconds = $seconds%60;
  $out = "";
  
  $hour_unit = _("hour");
  $minute_unit = _("minute");
  $second_unit = _("second");
  
  if ($hour_unit == "hour") {
    $hour_unit .= ($hours > 1 ? "s" : "");
  }
  if ($minute_unit == "minute") {
    $minute_unit .= ($minutes > 1 ? "s" : "");
  }
  if ($second_unit == "second") {
    $second_unit .= ($seconds > 1 ? "s" : "");
  }

  if ($hours > 0) $out .= $hours . " " . $hour_unit . " ";
  if ($minutes > 0) $out .= $minutes . " " . $minute_unit . " ";
  if ($seconds > 0) $out .= $seconds . " " . $second_unit;
  return trim($out);
}
