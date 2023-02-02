<?php
  include './include/connect.php';
  include './include/get_city.php';

    $dataBrands = file_get_contents("http://localhost/showroom/api/brandList");
    $databrand = json_decode($dataBrands, true);

    $dataVehicles = file_get_contents('http://localhost/showroom/api/vehicleList');
    $dataVehicle = json_decode($dataVehicles, true);
    
    // Gọi ra ds xe
    $queryCar= $conn -> prepare("SELECT car.*, sh.name FROM tbl_car_article car JOIN tbl_showroom sh on sh.id = car.showroom_id ");
    $queryCar-> execute();
    $resultsCar = $queryCar->fetchAll(PDO::FETCH_OBJ);



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trang chủ</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" href="./lib/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="./css/style.css" />
</head>

<body>
    <div class="header">
        <div class="menu">
            <div class="container">
                <ul>
                    <li><a href="./index.php">Trang chủ</a></li>
                    <li><a href="./showroom.php">Danh sách showroom</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="#">Tin tức</a></li>
                </ul>
            </div>
        </div>
        <div class="slider">
            <div id="slider-in">
                <img src="http://1.bp.blogspot.com/-6eD9x-eISTU/U9x_KcwZV1I/AAAAAAAAOnc/fllCSGEGb-g/s1600/Cover-facebook-mercedes-benz-6.jpg" alt="" />
                <img src="https://lh4.googleusercontent.com/-AwuuI17Lkec/UUvNt-srWfI/AAAAAAAAGnM/x9ZDsWcBegY/s1600/Anh-bia-oto-xe-hop-+(10).jpg" alt="" />
                <img src="https://lh4.googleusercontent.com/-YqLfRZjymcw/UUvNuqz9esI/AAAAAAAAGng/WGauzgxWRNc/s1600/Anh-bia-oto-xe-hop-+(14).jpg" alt="" />
            </div>
        </div>
    </div>
    <div class="main">
        <div class="container">
            <h2 class="list-car">Danh sách xe ô tô</h2>
                <div class="row">
                    <?php foreach ($resultsCar as $key => $value) { ?>
                        <div class="col-4">
                            <div class="session">
                                <div class="image">
                                    <a href="#">
                                        <img src="<?php echo $value -> image ?>" alt="image">
                                    </a>
                                </div>
                                <div class="session-title">
                                    <div class="brand-title">
                                        Thương hiệu:
                                        <p>
                                            <?php foreach ($databrand as $key => $brand) {
                                                if($brand['brands_id'] == $value->brand_id ){
                                                    echo $brand['brand_name'];
                                                }
                                            } ?>
                                        </p>
                                    </div>
                                    <div class="brand">
                                        <a href="#">
                                            <h2>
                                                <?php foreach ($dataVehicle as $key => $vehicles) {
                                                if($vehicles['id'] == $value->vehicles_id  ){
                                                    echo $vehicles['name'];
                                                }
                                            } ?>
                                            </h2>
                                        </a>
                                        <p>
                                            <?php
                                                $tien = (int) $value->price;
                                                $bien =0;
                                                if(strlen($tien)>=10){
                                                    $bien =  $tien/1000000000;
                                                    echo $bien." Tỷ đồng";
                                                }
                                                elseif(strlen($tien)>=7 && strlen($tien)<10){
                                                    $bien =  $tien/1000000;
                                                    echo $bien." Triệu đồng";
                                                }else {
                                                    $bien = number_format($tien,0,",",".");
                                                    echo $bien." Đồng";
                                                }
                                            ?>
                                        </p>
                                    </div>
                                    <div class="line"></div>
                                    <div class="title">
                                        <?php echo $value -> detail?>
                                    </div>
                                </div>
                            </div>
                        </div>
                     <?php } ?>
                 </div>
           
        </div>

    </div>
    <div class="footer">
        <img src="https://hondacantho.com/upload/images/slider/050059b6e1fe72a63e92fe003cf9cd5c.jpg" alt="">
        <h2>Bình Minh công ty dịch vụ bán các dòng xe ô tô cao cấp</h2>
        <p>công ty Bình Minh là một công ty thuộc tập đoàn VinGroup của Việt Nam được người dân trên toàn thế giới tin tưởng và sử dụng, bởi sự tiên nghi, an toàn và thân thiện</p>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</script>
<script src="./js/main.js"></script>

</html>