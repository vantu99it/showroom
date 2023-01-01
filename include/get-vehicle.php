<?php 

    $brandId=0;
    if (isset($_GET['brandId'])) $brandId = $_GET['brandId'];
    settype($brandId, "int");
    $data = file_get_contents('http://localhost/showroom/api/listByBrand?brandId='.$brandId);
    echo $data; 
?>