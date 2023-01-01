<?php
include "../include/connect.php";
$sql = "SELECT * FROM tbl_showroom";
$query = $conn->prepare($sql);
$query->execute();
$excute = $query->fetchAll(PDO::FETCH_OBJ);

function check_broken_link($url)
{
    $handle   = curl_init($url);
    if (false === $handle) {
        return false;
    }
    curl_setopt($handle, CURLOPT_HEADER, false);
    curl_setopt($handle, CURLOPT_FAILONERROR, true);
    curl_setopt($handle, CURLOPT_NOBODY, true);
    curl_setopt($handle, CURLOPT_RETURNTRANSFER, false);
    $connectable = curl_exec($handle);
    curl_close($handle);
    return $connectable;
}
$url = "http://qcvn109.gov.vn/dvhc/XSLT_Tree/dvhc_data.xml";
if (check_broken_link($url) === TRUE) {
    $xml = file_get_contents($url);
    $data = simplexml_load_string($xml);
}


if (isset($_POST['btn-add-s']) && ($_POST['btn-add-s'])) {
    $name = $_POST['name'];
    $city = $_POST['city'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $sql = "INSERT INTO tbl_showroom (name, city_id, phone, email, address) VALUES (:name, :city, :phone, :email, :address)";
    $query = $conn->prepare($sql);
    $query->bindParam(':name', $name, PDO::PARAM_STR);
    $query->bindParam(':city', $city, PDO::PARAM_STR);
    $query->bindParam(':phone', $phone, PDO::PARAM_STR);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':address', $address, PDO::PARAM_STR);
    $query_excute = $query->execute();
    if ($query_excute) {
        header('location: showroom.php');
    }
}
if (isset($_REQUEST['delete']) && ($_REQUEST['delete'])) {
    $delete = intval($_GET['delete']);
    $sql = "DELETE FROM tbl_showroom WHERE id = $delete";
    $query = $conn->prepare($sql);
    $query->execute();
    if ($query) {
        header("Location: ./showroom.php");
    } else {
        echo "Lỗi!";
    }
}
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql_edit = "SELECT * FROM tbl_showroom WHERE id = $id";
    $query_edit = $conn->prepare($sql_edit);
    $query_edit->execute();
    $result_edit = $query_edit->fetch(PDO::FETCH_OBJ);
    $id = $_GET['id'];
    if (isset($_POST['btn-edit-s']) && ($_POST['btn-edit-s'])) {
        $name = $_POST['name-edit'];
        $city = $_POST['city-edit'];
        $phone = $_POST['phone-edit'];
        $email = $_POST['email-edit'];
        $address = $_POST['address-edit'];
        $sql = "UPDATE tbl_showroom SET name = '$name', city_id = '$city', phone = '$phone', email = '$email', address = '$address' WHERE id = $id";
        $query = $conn->prepare($sql);
        $query->execute();
        if ($query) {
            header("Location: showroom.php");
        } else {
            echo "lỗi!";
        }
    }
}
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
                <div class="main-showroom">
                    <div class="add-showroom">
                        <input type="submit" value="Thêm mới" class="btn-showroom-add" name="btn-showroom-add">
                    </div>
                    <div class="show-showroom">
                        <table id="my-table" cellpadding="2" cellspacing="2">
                            <thead>
                                <tr class="first-line">
                                    <th>STT</th>
                                    <th>Tên showroom</th>
                                    <th>Tỉnh</th>
                                    <th>Điện thoại</th>
                                    <th>Email</th>
                                    <th>Địa chỉ</th>
                                    <th><i class="fas fa-cog"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($excute as $key => $value) { ?>
                                    <tr>
                                        <td><?php echo $key + 1 ?></td>
                                        <td><?php echo $value->name ?></td>
                                        <td>
                                            <?php foreach ($data as $key1 => $value1) {
                                                if ($value1->Cap == "TINH"){
                                                if($value->city_id == $value1->MaDVHC){echo $value1->Ten;}
                                                }
                                            }
                                             
                                            ?>
                                        </td>
                                        <td><?php echo $value->phone ?></td>
                                        <td><?php echo $value->email ?></td>
                                        <td class="title_desc"><?php echo $value->address ?></td>
                                        <td>
                                            <div class="del-edit">
                                                <div class="edit">
                                                    <a href="./showroom.php?id=<?php echo $value->id ?>"><i class="btn-edit-showroom fas fa-edit"></i></a>
                                                </div>
                                                <div class="delete">
                                                    <a href="./showroom.php?delete=<?php echo $value->id ?>" onclick="return confirm('Bạn chắc chắn muốn xóa?');"><i class="delete fas fa-trash-alt"></i></a>
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
        <div class="form-add-showroom">
            <div class="form-add">
                <div class="title">
                    <h2>Thêm thông tin cửa hàng</h2>
                    <a class="close-showrrom" href="showroom.php"><i class="far fa-window-close"></i></a>
                </div>
                <form id="form-add-showroom" action="" method="POST">
                    <div class="group-add">
                        <p>Tên showroom</p>
                        <input type="text" name="name">
                    </div>
                    <div class="group-add">
                        <p>Tỉnh</p>
                        <select name="city" id="city-id">
                            <?php foreach ($data as $key => $value) {
                                if ($value->Cap == "TINH") { ?>
                                    <option value="<?php echo $value->MaDVHC ?>"><?php echo $value->Ten ?></option>
                            <?php
                                }
                            } ?>
                        </select>
                    </div>
                    <div class="group-add">
                        <p>Điện thoại</p>
                        <input type="text" name="phone">
                    </div>
                    <div class="group-add">
                        <p>Email</p>
                        <input type="text" name="email">
                    </div>
                    <div class="group-add">
                        <p>Địa chỉ</p>
                        <input type="text" name="address">
                    </div>
                    <div class="btn-add-showroom">
                        <input type="submit" value="Thêm" name="btn-add-s" class="btn-add-s">
                    </div>
                </form>
            </div>
        </div>
        <?php if (isset($_GET['id'])) { ?>
            <div class="form-edit-showroom">
                <div class="form-edit">
                    <div class="title-edit">
                        <h2>Cập nhật thông tin cửa hàng</h2>
                        <a class="close-edit-showroom" href="showroom.php"><i class="far fa-window-close"></i></a>
                    </div>
                    <form id="form-edit-showroom" action="" method="POST">
                        <div class="group-edit">
                            <p>Tên xe</p>
                            <input type="text" value="<?php echo $result_edit->name ?>" name="name-edit">
                        </div>
                        <div class="group-edit">
                            <p>Tỉnh</p>
                            <select name="city-edit" id="city-id-edit">
                                <?php foreach ($data as $key => $value) {
                                    if ($value->Cap == "TINH") { ?>
                                        <option value="<?php echo $value->MaDVHC ?>"><?php echo $value->Ten ?></option>
                                <?php
                                    }
                                } ?>
                            </select>
                        </div>
                        <div class="group-edit">
                            <p>Điện thoại</p>
                            <input type="text" value="<?php echo $result_edit->phone ?>" name="phone-edit">
                        </div>
                        <div class="group-edit">
                            <p>Email</p>
                            <input type="text" value="<?php echo $result_edit->email ?>" name="email-edit">
                        </div>
                        <div class="group-edit">
                            <p>Địa chỉ</p>
                            <input type="text" value="<?php echo $result_edit->address ?>" name="address-edit">
                        </div>
                        <div class="btn-edit-showroom-s">
                            <input type="submit" value="cập nhật" name="btn-edit-s" class="btn-edit-s">
                        </div>
                    </form>
                </div>
            </div>
        <?php } ?>
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