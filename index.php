<?php
  include './include/connect.php';
// Lấy danh sách tỉnh từ web service
  function check_broken_link($url){
      $handle   = curl_init($url);
      if (false === $handle)
      {
          return false;
      }
      curl_setopt($handle, CURLOPT_HEADER, false);
      curl_setopt($handle, CURLOPT_FAILONERROR, true);  // this works
      curl_setopt($handle, CURLOPT_NOBODY, true);
      curl_setopt($handle, CURLOPT_RETURNTRANSFER, false);
      $connectable = curl_exec($handle);
      curl_close($handle);    
      return $connectable;
  }
  $url = "http://qcvn109.gov.vn/dvhc/XSLT_Tree/dvhc_data.xml";
  if(check_broken_link($url) === TRUE){
      $xml = file_get_contents($url);
      $data = simplexml_load_string($xml);
  }
  else{
      echo '<tr class="danger"><th colspan="5" style="text-align:center"><h5>KHÔNG THỂ KẾT NỐI ĐẾN MÁY CHỦ</h5></th></tr>';
  }
// die();
//   Gọi ra danh sách showroom theo tỉnh
if(isset($_POST['btn-search'])){
    $city = (int) $_POST['select'];
    $query= $conn -> prepare("SELECT * FROM tbl_showroom WHERE city_id = :city_id");
    $query-> bindParam(':city_id', $city, PDO::PARAM_STR);
    $query-> execute();
    $results = $query->fetchAll(PDO::FETCH_OBJ);
}else{
    $query= $conn -> prepare("SELECT * FROM tbl_showroom");
    $query-> execute();
    $results = $query->fetchAll(PDO::FETCH_OBJ);
}
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
                    <li><a href="#">Trang chủ</a></li>
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
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="session">
                        <div class="image">
                            <a href="#">
                                <img src="./image/hinh-nen-xe-oto-dep-1.jpg" alt="image">
                            </a>
                        </div>
                        <div class="session-title">
                            <div class="brand-title">
                                Thương hiệu:<p>Mercedes</p>
                            </div>
                            <div class="brand">
                                <a href="#">
                                    <h2>SUZUKI XL7</h2>
                                </a>
                                <p>500.000 VNĐ</p>
                            </div>
                            <div class="line"></div>
                            <div class="title">
                                Toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc toyota Fortuner 2022 chắc hẳn là cái tên rất quen thuộc
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="POST">
                    <div class="search">
                        <div class="search-address">
                            <p>Chọn địa điểm</p>
                            <select name="select" id="city">
                            <?php
                                if ($data === false) {
                                    echo '<tr class="danger"><th colspan="5" style="text-align:center"><h5>DỮ LIỆU BỊ LỖI</h5></th></tr>';
                                }
                                else {
                                    foreach ($data as $key => $value) {
                                    if($value->Cap == "TINH"){?>
                                        <option value="<?php echo $value->MaDVHC ?>"><?php echo $value->Ten ?></option>
                                    <?php
                                    }
                                    }
                                }

                                ?>
                            </select>
                        </div>
                        <div class="btn-search">
                            <input type="submit" value="Tìm kiếm" name="btn-search">
                        </div>
                    </div>
                </form>
                <h2 class="list-showroom">Danh sách Showroom</h2>
                <?php foreach ($results as $key => $value) {?>
                    <div class="col-6">
                        <div class="search-infor">
                            <h2><?php echo $value -> name ?></h2>
                            <div class="phone">
                                Điện thoại: <a target="target_blank" href="tel:0123456789"><?php echo $value -> phone ?></a>
                            </div>
                            <div class="mail">
                                Email: <a target="target_blank" href="mailto: nhom@gmail.com"><?php echo $value -> email ?></a>
                            </div>
                            <p><?php echo $value -> address ?></p>
                        </div>
                    </div>
                <?php }?>
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