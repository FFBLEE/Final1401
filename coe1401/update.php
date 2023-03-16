<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/coe140101.php';
  
// get database connection
$database = new Database();
$db = $database->getConnection();
  
// prepare product object
$product = new coe140101($db);
  
// get id of product to be edited
$data = json_decode(file_get_contents("php://input"));
  
// set ID property of product to be edited
$coe140101->id = $data->id;
  
// set product property values
$coe140101_item=array(
            "id" => $id,
            "name" => $name,
            "phone" => $phone,
            "email" => $email,
            "country" => $country,
            "region" => $region
        );
        $coe140101->name = $data->name;
        $coe140101->phone = $data->phone;
        $coe140101->email = $data->email;
        $coe140101->country = $data->country;
        $coe140101->region = $data->region;
  
// update the product
if($coe140101->update()){
  
    // set response code - 200 ok
    http_response_code(200);
  
    // tell the user
    echo json_encode(array("message" => "Data was updated."));
}
  
// if unable to update the product, tell the user
else{
  
    // set response code - 503 service unavailable
    http_response_code(503);
  
    // tell the user
    echo json_encode(array("message" => "Unable to update Data."));
}
?>