<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
  
// include database and object files
include_once '../config/database.php';
include_once '../objects/coe140101.php';
  
// get database connection
$database = new Database();
$db = $database->getConnection();
  
// prepare product object
$coe140101 = new coe140101($db);
  
// set ID property of record to read
$coe140101->id = isset($_GET['id']) ? $_GET['id'] : die();
  
// read the details of product to be edited
$coe140101->readOne();
  
if($coe140101->name!=null){
    // create array
    $coe140101_arr = array(
        "id" =>  $coe140101->id,
        "name" => $coe140101->name,
        "phone" => $coe140101->phone,
        "email" => $coe140101->email,
        "country" => $coe140101->country,
        "currency" => $coe140101->currency
  
    );
  
    // set response code - 200 OK
    http_response_code(200);
  
    // make it json format
    echo json_encode($coe140101_arr);
}
  
else{
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user product does not exist
    echo json_encode(array("message" => "Data does not exist."));
}
?>