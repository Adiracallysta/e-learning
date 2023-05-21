<?php 
$fileurl = $_SERVER['DOCUMENT_ROOT'] . "/phpcrud/img/". $_POST['file_path'];
header("Content-type:image/jpeg");
header('Content-Disposition: attachment; filename=' . $fileurl);
readfile( $fileurl );
header('location:index.php');

?>