<?php
include "../include/connect.php";
include "../include/func-slug.php";

$dataBrands = file_get_contents("http://localhost/showroom/api/brandList");
$databrand = json_decode($dataBrands, true);

$dataVehicles = file_get_contents('http://localhost/showroom/api/vehicleList');
$dataVehicle = json_decode($dataVehicles, true);

$sql = "SELECT * FROM tbl_car_article";
$query = $conn->prepare($sql);
$query->execute();
$excute = $query->fetchAll(PDO::FETCH_OBJ);



$querySR = $conn->prepare("SELECT * FROM tbl_showroom");
$querySR->execute();
$resultsSR = $querySR->fetchAll(PDO::FETCH_OBJ);

// Thêm
if(isset($_POST['btn-add'])){
    $brand_id = $_POST['brand_id'];
    $vehicles_id = $_POST['vehicles_id'];
    $detail = $_POST['detail'];
    $price = $_POST['price'];
    $showroom_id  = $_POST['showroom_id'];
    if(isset($_FILES["upload-img"])){
        $imagePNG = $_FILES["upload-img"]["name"];
        $imageName = vn2en($imagePNG);  
        $target_dir = "../image/";
        $target_file = $target_dir.$imageName;
        move_uploaded_file($_FILES["upload-img"]["tmp_name"],'./image/'.$imageName);       
    }
        $queryCar= $conn -> prepare("INSERT INTO tbl_car_article(brand_id,vehicles_id,detail,price,showroom_id,image) value(:brand_id,:vehicles_id,:detail,:price,:showroom_id,:image)");
        $queryCar->bindParam(':brand_id',$brand_id,PDO::PARAM_STR);
        $queryCar->bindParam(':vehicles_id',$vehicles_id,PDO::PARAM_STR);
        $queryCar->bindParam(':detail',$detail,PDO::PARAM_STR);
        $queryCar->bindParam(':price',$price,PDO::PARAM_STR);
        $queryCar->bindParam(':showroom_id',$showroom_id,PDO::PARAM_STR);
        $queryCar->bindParam(':image',$target_file,PDO::PARAM_STR);
        $queryCar->execute();
        $lastInsertId = $conn->lastInsertId();
        if($lastInsertId){
            echo "Thành công";
        }else{
            echo "Thất bại";

        }
}

// gọi ra thông tin hiện bảng
    $queryCaSr = $conn->prepare("SELECT ca.*, sr.name FROM tbl_car_article ca join tbl_showroom sr on sr.id = ca.showroom_id");
    $queryCaSr->execute();
    $resultsCaSr = $queryCaSr->fetchAll(PDO::FETCH_OBJ);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="./lib/bootstrap/css/bootstrap-theme.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <link rel="stylesheet" href="./lib/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="./css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="./css/style.css">

</head>

<body>
    <div class="body">
        <div class="body-admin">
            <div class="header-admin">
                <?php include('./include/header.php') ?>
            </div>
            <div class="main">
                <div class="main-header">
                    <h2>Trang quản trị</h2>
                </div>
                <div class="main-infor-car">
                    <div class="add-infor-car">
                        <input type="submit" value="Thêm mới" class="btn-add-car" name="btn-add-car">
                    </div>
                    <div class="show-infor-car">
                        <table id="my-table" cellpadding="2" cellspacing="2">
                            <thead>
                                <tr class="first-line">
                                    <th style = "width: 6%">STT</th>
                                    <th style = "width: 10%">Hãng xe</th>
                                    <th style = "width: 10%">Phân khúc</th>
                                    <th style = "width: 10%">Giá xe</th>
                                    <th style = "width: 10%">Cửa hàng bán</th>
                                    <th style = "width: 8%">Hình ảnh</th>
                                    <th style = "width: 20%">Chi tiết</th>
                                    <th style = "width: 6%"><i class="fas fa-cog"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($resultsCaSr as $key => $value) {?>
                                    <tr>
                                        <td><?php echo $key + 1 ?></td>
                                        <td>
                                            <?php foreach ($databrand as $key => $brand) {
                                                if($brand['brands_id'] == $value->brand_id ){
                                                    echo $brand['brand_name'];
                                                }
                                            } ?>
                                        </td>
                                        <td>
                                            <?php foreach ($dataVehicle as $key => $vehicles) {
                                                if($vehicles['id'] == $value->vehicles_id  ){
                                                    echo $vehicles['name'];
                                                }
                                            } ?>
                                        </td>
                                        <td>
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
                                        </td>
                                        <td><?php echo $value-> name ?></td>
                                        <td><img class="img-car" src="<?php echo $value -> image?>" alt=""></td>
                                        <td class="title_desc"><?php echo $value -> detail?></td>
                                        <td>
                                            <div class="del-edit">
                                                <div class="edit">
                                                    <a href="#"><i class="btn-edit-car fas fa-edit"></i></a>
                                                </div>
                                                <div class="delete">
                                                    <a href="#"><i class="delete fas fa-trash-alt"></i></a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-add-infor-car">
            <div class="form-add">
                <div class="title">
                    <h2>Thêm thông tin xe</h2>
                    <a class="close" href="car-article.php"><i class="far fa-window-close"></i></a>
                </div>
                <form id="form-add-infor-car" action="" method="POST" enctype="multipart/form-data">
                    <div class="group-add">
                        <p>Hãng xe</p>
                        <select name="brand_id" id="brandId">
                            <option value="-1">Chọn hãng xe</option>
                            
                        </select>
                    </div>
                    <div class="group-add">
                        <p>Tên xe</p>
                        <select name="vehicles_id" id="vehiclesId">
                            <option value="-1">Chọn tên xe</option>
                        </select>
                    </div>
                    <div class="group-add">
                        <p>Giá xe</p>
                        <input type="number" name="price" class="price-car">
                    </div>
                    <div class="group-add">
                        <p>Cửa hàng</p>
                        <select name="showroom_id" id="showroom-id">
                            <?php foreach ($resultsSR as $key => $value) {?>
                                <option value="<?php echo $value->id ?>"><?php echo $value->name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="group-add">
                        <p>Chi tiết</p>
                        <textarea name="detail" class="desc" id="" cols="30" rows="5"></textarea>
                    </div>
                    <div class="group-all-under">
                        <div class="group-all">
                            <div class="group-add">
                                <p>Hình ảnh</p>
                                <input type="file" name = "upload-img">
                            </div>
                        </div>
                        <div class="btn-add-car">
                            <input type="submit" value="Thêm" name="btn-add" class="btn-add">
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="form-edit-infor-car">
            <div class="form-edit">
                <div class="title-edit">
                    <h2>Cập nhật thông tin xe</h2>
                    <a class="close-edit" href="car-article.php"><i class="far fa-window-close"></i></a>
                </div>
                <form id="form-edit-infor-car" action="" method="POST">
                    <div class="group-add">
                        <p>Hãng xe</p>
                        <select name="brand-edit" id="brand-id-edit">

                            <?php foreach ($data as $key => $value) { ?>
                                <option value="<?php echo $value['brands_id'] ?>"><?php echo $value['brand_name'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="group-edit">
                        <p>Tên xe</p>
                        <select name="vehicles-edit" id="vehicles-id-edit">
                            <option value="0">Mercedes GL360s 2019</option>
                            <option value="1">Honda Civic 2020</option>
                            <option value="3">Hyundai Elantra 2023</option>
                        </select>
                    </div>
                    <div class="group-edit">
                        <p>Giá xe</p>
                        <input type="number" name="price-edit" class="price-car-edit">
                    </div>
                    <div class="group-edit">
                        <p>Cửa hàng</p>
                        <select name="showroom-edit" id="showroom-id-edit">
                            <option value="0">30, Phạm Kim Đồng, phường Hưng Bình, tp Vinh</option>
                            <option value="1">40, Phạm Kim Đồng, phường Hưng Bình, tp Vinh</option>
                            <option value="3">60, Phạm Kim Đồng, phường Hưng Bình, tp Vinh</option>
                        </select>
                    </div>
                    <div class="group-edit">
                        <p>Chi tiết</p>
                        <textarea name="desc-edit" class="desc-edit" id="" cols="30" rows="5"></textarea>
                    </div>
                    <div class="group-all-under-edit">
                        <div class="group-all-edit">
                            <div class="group-edit">
                                <p>Hình ảnh</p>
                                <input type="file">
                            </div>
                            <div class="display-img-edit">
                                <div id="img-select-edit">
                                    <p>Ảnh mới chọn</p>
                                    <img src="./image/hinh-nen-xe-oto-dep-7.jpg" alt="image">
                                </div>
                                <div id="img-change-edit">
                                    <p>Ảnh trước đó</p>
                                    <img src="./image/hinh-nen-xe-oto-dep-7.jpg" alt="image">
                                </div>
                            </div>
                        </div>
                        <div class="btn-add-car-edit">
                            <input type="submit" value="Cập nhật" name="btn-edit" class="btn-edit">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="./lib/bootstrap/js/bootstrap.min.js"></script>
<script src="./js/jquery.dataTables.min.js"></script>
<script src="../js/getdata.js"></script>
<script src="./js/admin.js"></script>
<script>
    $(document).ready(function() {
        $("#my-table").DataTable({
            language: {
                url: "https://cdn.datatables.net/plug-ins/1.12.1/i18n/vi.json",
            },
            pageLength: 5,
            lengthMenu: [1, 2, 3, 4, 5, 10, 15, 20, 30, 50, 100],
        });
    });
</script>

</html>