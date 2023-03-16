<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
  
// get database connection
include_once '../config/database.php';
  
// instantiate product object
include_once '../objects/coe140101.php';
  
$database = new Database();
$db = $database->getConnection();
  
$coe140101 = new coe140101($db);
  
// get posted data
$data = json_decode(file_get_contents("php://input"));
  
// make sure data is not empty
if(
    !empty($data->name) &&
    !empty($data->phone) &&
    !empty($data->email) &&
    !empty($data->country) &&
    !empty($data->currency)
){
  
    // set product property values
    $coe140101->name = $data->name;
    $coe140101->phone = $data->phone;
    $coe140101->email = $data->email;
    $coe140101->country = $data->country;
    $coe140101->currency = $data->region;
  
    // create the product
    if($coe140101->create()){
  
        // set response code - 201 created
        http_response_code(201);
  
        // tell the user
        echo json_encode(array("message" => "Data was created."));
    }
  
    // if unable to create the product, tell the user
    else{
  
        // set response code - 503 service unavailable
        http_response_code(503);
  
        // tell the user
        echo json_encode(array("message" => "Unable to create Data."));
    }
}
  
// tell the user data is incomplete
else{
  
    // set response code - 400 bad request
    http_response_code(400);
  
    // tell the user
    echo json_encode(array("message" => "Unable to create Data. Data is incomplete."));
}
?>