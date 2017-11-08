<?php
require_once("ProvinceRestHandler.php");
$method = $_SERVER['REQUEST_METHOD'];
$view = "";
if(isset($_GET["page_key"]))
	$page_key = $_GET["page_key"]; 
/*
controls the RESTful services
URL mapping
*/


	switch($page_key){

		case "list":
			// to handle REST Url /mobile/list/
			$provinceRestHandler = new ProvinceRestHandler();
			$result = $provinceRestHandler->getAllProvinces();
			break;
	
		case "create":
			// to handle REST Url /mobile/create/
			$mobileRestHandler = new ProvinceRestHandler();
			$mobileRestHandler->add();
		break;
		
		case "delete":
			// to handle REST Url /mobile/delete/<row_id>
			$mobileRestHandler = new ProvinceRestHandler();
			$result = $mobileRestHandler->deleteMobileById();
		break;
		
		case "update":
			// to handle REST Url /mobile/update/<row_id>
			$mobileRestHandler = new ProvinceRestHandler();
			$mobileRestHandler->editMobileById();
		break;
		default:
		// to handle REST Url /mobile/list/
			$mobileRestHandler = new ProvinceRestHandler();
			$result = $mobileRestHandler->getAllMobiles();
			break;
		break;
}
?>
