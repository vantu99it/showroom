<?php 
//Lấy dữ liệu trả về dạng xml
$data = file_get_contents("http://localhost/showroom/api/brandList");
echo $data;
?>