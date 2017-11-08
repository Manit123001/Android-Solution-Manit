<?php
require_once("SimpleRest.php");
require_once("Province.php");
		
class ProvinceRestHandler extends SimpleRest {

	function getAllProvinces() {	

		$province = new Province();
 
		$rawData = $province->getAllProvince();

        if(empty($rawData)) {
			$statusCode = 404;
			$rawData = array('success' => 0);		
		} else {
			$statusCode = 200;
		}

        $requestContentType = $_SERVER['HTTP_ACCEPT'];
		$this->setHttpHeaders($requestContentType, $statusCode);
        
        // print($requestContentType);
        // print_r($requestContentType);
        
		$result["success"] = true;
		$result["result"] = $rawData;

        // if(strpos($requestContentType, 'application/json') !== false){
        // 	$response = $this->encodeJson($result);
		// 	echo $response;
		// }

        $response = $this->encodeJson($result);
		echo $response;
	}
	
	
	// function add() {	
	// 	$mobile = new Mobile();
	// 	$rawData = $mobile->addMobile();
	// 	if(empty($rawData)) {
	// 		$statusCode = 404;
	// 		$rawData = array('success' => 0);		
	// 	} else {
	// 		$statusCode = 200;
	// 	}
		
	// 	$requestContentType = $_SERVER['HTTP_ACCEPT'];
	// 	$this ->setHttpHeaders($requestContentType, $statusCode);
	// 	$result = $rawData;
				
	// 	if(strpos($requestContentType,'application/json') !== false){
	// 		$response = $this->encodeJson($result);
	// 		echo $response;
	// 	}
	// }

	// function deleteMobileById() {	
	// 	$mobile = new Mobile();
	// 	$rawData = $mobile->deleteMobile();
		
	// 	if(empty($rawData)) {
	// 		$statusCode = 404;
	// 		$rawData = array('success' => 0);		
	// 	} else {
	// 		$statusCode = 200;
	// 	}
		
	// 	$requestContentType = $_SERVER['HTTP_ACCEPT'];
	// 	$this ->setHttpHeaders($requestContentType, $statusCode);
	// 	$result = $rawData;
				
	// 	if(strpos($requestContentType,'application/json') !== false){
	// 		$response = $this->encodeJson($result);
	// 		echo $response;
	// 	}
	// }
	
	// function editMobileById() {	
	// 	$mobile = new Mobile();
	// 	$rawData = $mobile->editMobile();
	// 	if(empty($rawData)) {
	// 		$statusCode = 404;
	// 		$rawData = array('success' => 0);		
	// 	} else {
	// 		$statusCode = 200;
	// 	}
		
	// 	$requestContentType = $_SERVER['HTTP_ACCEPT'];
	// 	$this ->setHttpHeaders($requestContentType, $statusCode);
	// 	$result = $rawData;
				
	// 	if(strpos($requestContentType,'application/json') !== false){
	// 		$response = $this->encodeJson($result);
	// 		echo $response;
	// 	}
	// }

	public function encodeJson($responseData) {
		$jsonResponse = json_encode($responseData);
		return $jsonResponse;		
	}
}
?>