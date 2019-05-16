<?php

header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","","thesis");

//Check if the file is well uploaded
if($_FILES['file']['error'] > 0) { echo 'Error during uploading, try again'; }

//We won't use $_FILES['file']['type'] to check the file extension for security purpose

//Set up valid image extensions
$extsAllowed = array( 'jpg', 'jpeg', 'png', 'gif' );

//Extract extention from uploaded file
//substr return ".jpg"
//Strrchr return "jpg"

$extUpload = strtolower( substr( strrchr($_FILES['file']['name'], '.') ,1) ) ;
//Check if the uploaded file extension is allowed

if (in_array($extUpload, $extsAllowed) ) {

    //Upload the file on the server

    $name = "uploads/{$_FILES['file']['name']}";
    $result = move_uploaded_file($_FILES['file']['tmp_name'], $name);
}

$imgPath = "/thesis/".$name;
$content = $_POST['content'];
$sql3 = "INSERT INTO image (imgPath, content) VALUES ('$imgPath', '$content');";
$result = mysqli_query($conn,$sql3);

$sqlQuery = "SELECT * FROM image";
$result = mysqli_query($conn,$sqlQuery);

$data = array();
foreach ($result as $row) {
    $data[] = $row;
}

mysqli_close($conn);

echo json_encode($data);
?>