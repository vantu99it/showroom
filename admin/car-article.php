<?php
include "../include/connect.php";
$sql = "SELECT * FROM tbl_car_article";
$query = $conn->prepare($sql);
$query->execute();
$excute = $query->fetchAll(PDO::FETCH_OBJ);
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
                                    <th>STT</th>
                                    <th>Hãng xe</th>
                                    <th>Phân khúc</th>
                                    <th>Giá xe</th>
                                    <th>Cửa hàng bán</th>
                                    <th>Hình ảnh</th>
                                    <th>Chi tiết</th>
                                    <th><i class="fas fa-cog"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Toyota</td>
                                    <td>Hạng D</td>
                                    <td>500.000</td>
                                    <td>Showrom 1</td>
                                    <td><img class="img-car" src="./image/hinh-nen-xe-oto-dep-7.jpg" alt=""></td>
                                    <td class="title_desc">Xe đẹp, 5 chỗ ngồi, giá hợp lý đến từ thị trường của Đức, đọng cơ V1.8 tubor</td>
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
                                <tr>
                                    <td>2</td>
                                    <td>Toyota</td>
                                    <td>Hạng D</td>
                                    <td>500.000</td>
                                    <td>Showrom 1</td>
                                    <td><img class="img-car" src="./image/hinh-nen-xe-oto-dep-7.jpg" alt=""></td>
                                    <td class="title_desc">Xe đẹp, 5 chỗ ngồi, giá hợp lý đến từ thị trường của Đức, đọng cơ V1.8 tubor</td>
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
                                <tr>
                                    <td>3</td>
                                    <td>Toyota</td>
                                    <td>Hạng D</td>
                                    <td>500.000</td>
                                    <td>Showrom 1</td>
                                    <td><img class="img-car" src="./image/hinh-nen-xe-oto-dep-7.jpg" alt=""></td>
                                    <td class="title_desc">Xe đẹp, 5 chỗ ngồi, giá hợp lý đến từ thị trường của Đức, đọng cơ V1.8 tubor</td>
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
                <form id="form-add-infor-car" action="" method="POST">
                    <div class="group-add">
                        <p>Hãng xe</p>
                        <select name="brand" id="brand-id">
                            <option value="0">Mercedes</option>
                            <option value="1">Honda</option>
                            <option value="3">Hyundai</option>
                        </select>
                    </div>
                    <div class="group-add">
                        <p>Tên xe</p>
                        <select name="vehicles" id="vehicles-id">
                            <option value="0">Mercedes GL360s 2019</option>
                            <option value="1">Honda Civic 2020</option>
                            <option value="3">Hyundai Elantra 2023</option>
                        </select>
                    </div>
                    <div class="group-add">
                        <p>Giá xe</p>
                        <input type="number" name="price" class="price-car">
                    </div>
                    <div class="group-add">
                        <p>Cửa hàng</p>
                        <select name="showroom" id="showroom-id">
                            <option value="0">30, Phạm Kim Đồng, phường Hưng Bình, tp Vinh</option>
                            <option value="1">40, Phạm Kim Đồng, phường Hưng Bình, tp Vinh</option>
                            <option value="3">60, Phạm Kim Đồng, phường Hưng Bình, tp Vinh</option>
                        </select>
                    </div>
                    <div class="group-add">
                        <p>Chi tiết</p>
                        <textarea name="desc" class="desc" id="" cols="30" rows="5"></textarea>
                    </div>
                    <div class="group-all-under">
                        <div class="group-all">
                            <div class="group-add">
                                <p>Hình ảnh</p>
                                <input type="file">
                            </div>
                            <div class="display-img">
                                <div id="img-select">
                                    <p>Ảnh mới chọn</p>
                                    <img src="./image/hinh-nen-xe-oto-dep-7.jpg" alt="image">
                                </div>
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
                            <option value="0">Mercedes</option>
                            <option value="1">Honda</option>
                            <option value="3">Hyundai</option>
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