<?php 
//Lấy dữ liệu trả về dạng xml
$data = file_get_contents("http://localhost/showroombrand/api/brand");
echo $data;
?>