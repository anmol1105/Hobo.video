<?php
/*
Plugin Name: Hobo
Description: To display the Data of the Mapper
Author: Anmol Srivastava || Dhruv Rastogi
Version:1.0.0
*/

register_activation_hook(__FILE__,'hobo_activate');
register_deactivation_hook(__FILE__,'hobo_deactivate');

function hobo_activate()
{
	
}
function hobo_deactivate()
{
	
}
add_action('admin_menu','hobo_menu');

function hobo_menu()
{
	add_menu_page('Mapper','Mapper',8,__FILE__,'Hobo_list');
}
add_shortcode('Hobo_list_shortcode','Hobo_list');
function Hobo_list()
{
include("Hobo_list.php");
}


?>