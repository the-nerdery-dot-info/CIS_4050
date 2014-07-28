<?php
/*
   Declare constants and connect to database.
*/


// DEFINE CONSTANTS
define ('DB_NAME', 'Metro_Advisor');
define ('DB_USER', 'root');
define ('DB_PASSWORD', 'root');
define ('DB_HOST', 'localhost');

//Store connection in variable and Connect to server
$link = mysql_connect(DB_HOST, DB_USER, DB_PASSWORD);

//Test connection and kill if no good
if (!$link){
    die('Could Not Connect: ' . mysql_error());
}

//Store selection in variable and Select the database to work with
$db_selected = mysql_select_db(DB_NAME, $link);

//Test selection and kill if no good
if (!$db_selected){
    die('Cannot use' . DB_NAME . ': ' . mysql_error());
}

//echo 'Connected Successfully';

?>
