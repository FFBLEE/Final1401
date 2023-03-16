<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");


// include database and object files
include_once '../config/database.php';
include_once '../objects/coe140101.php';
  
// instantiate database and product object
$database = new Database();
$db = $database->getConnection();
  
// initialize object
$coe140101 = new coe140101($db);
  
// read products will be here

// query products
$stmt = $coe140101->read();
$num = $stmt->rowCount();
  
// check if more than 0 record found
if($num>0){
  
    // products array
    $coe140101_arr=array();
    $coe140101_arr["records"]=array();
  
    // retrieve our table contents
    // fetch() is faster than fetchAll()
    // http://stackoverflow.com/questions/2770630/pdofetchall-vs-pdofetch-in-a-loop
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
    
        // set currency to empty string if it's null or undefined
    
        $coe140101_item = array(
            "id" => $id,
            "name" => $name,
            "phone" => $phone,
            "email" => $email,
            "country" => $country,
            "currency" => $currency
        );
    
        array_push($coe140101_arr["records"], $coe140101_item);
    }
    
  
    // set response code - 200 OK
    http_response_code(200);
  
    // show products data in json format
    echo json_encode($coe140101_arr);
}else{
  
    // set response code - 404 Not found
    http_response_code(404);
  
    // tell the user no products found
    echo json_encode(
        array("message" => "No data found.")
    );
}

?>