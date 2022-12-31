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
    <link rel="stylesheet" href="./css/style.css">


</head>

<body>
    <div class="body-admin">
        <div class="header-admin">
            <?php include('./include/header.php') ?>
        </div>
        <div class="main">
            <div class="main-header">
                <h2>Trang quản trị</h2>
            </div>
            <div class="container">
                <div class="row boder-main-main">
                    <div class="col-3">
                        <div class="main-main">
                            <div class="session">
                                <div class="session-on">
                                    <a href="#">Thông tin xe</a>
                                </div>
                                <div class="session-under">
                                    <a href=""><i class="fas fa-car"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="main-main">
                            <div class="session">
                                <div class="session-on">
                                    <a href="#">Cửa hàng</a>
                                </div>
                                <div class="session-under">
                                    <a href="#"><i class="fas fa-warehouse"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="./lib/bootstrap/js/bootstrap.min.js"></script>

</html>