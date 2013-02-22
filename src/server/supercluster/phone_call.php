<?php
// this php script is used only by superservers which answer server calls
include("phone_server.inc.php");
include("../utils/utils.inc.php");

$serverid     = getparam('serverid', '');
$serverurl    = getparam('serverurl', '');
$chatchannel  = getparam('chatchannel', '');
$version      = getparam('version', 0);
$superserver  = getparam('superserver', 0);
$uptime       = getparam('uptime', 0);
$totaluptime  = getparam('totaluptime', 0);
$longitude    = getparam('longitude', 0);
$latitude     = getparam('latitude', 0);
$activenodes  = getparam('activenodes', 0);
$jobinqueue   = getparam('jobinqueue', 0);

if (($serverid=="") || ($serverurl=="")) die("ERROR: please define at least serverid and serverurl");
$ip = $_SERVER['REMOTE_ADDR'];

answer_phone($serverid, $servername, $serverurl, $chatchannel, $version, $superserver, $uptime, $totaluptime, $longitude, $latitude, $activenodes, $jobinqueue, $ip);

?>