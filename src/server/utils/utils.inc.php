<?php

function getparam($name, $default) {
 if (isset($_GET["$name"])) return $_GET["$name"]; else return $default;
}

function js_redirect($s)
    {
        print "<body onload=\"window.location='$s';\">";
        print "<a href='$s'>Javascript redirect.. If your page doesn't redirect click here.</a>";
        print "</body>";
        exit();
}

function js_cookie($name,$value)
{
        print "<script>";
        print "document.cookie='$name=$value'";
        print "</script>";
}

?>