<?php 

session_start();

include("includes/db.php");
include("functions/functions.php");

?>

<?php 

if(isset($_GET['pro_id'])){
    
    $product_id = $_GET['pro_id'];
    
    $get_product = "select * from products where product_id='$product_id'";
    
    $run_product = mysqli_query($con,$get_product);
    
    $row_product = mysqli_fetch_array($run_product);
    
    $p_cat_id = $row_product['p_cat_id'];
    
    $pro_title = $row_product['product_title'];
    
    $pro_price = $row_product['product_price'];
    
    $pro_desc = $row_product['product_desc'];
    
    $pro_img1 = $row_product['product_img1'];
    
    $pro_img2 = $row_product['product_img2'];
    
    $pro_img3 = $row_product['product_img3'];
    
    $get_p_cat = "select * from product_categories where p_cat_id='$p_cat_id'";
    
    $run_p_cat = mysqli_query($con,$get_p_cat);
    
    $row_p_cat = mysqli_fetch_array($run_p_cat);
    
    $p_cat_title = $row_p_cat['p_cat_title'];
    
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>DongVi Motor Store</title>
    <link rel="stylesheet" href="styles/bootstrap-337.min.css">
    <link rel="stylesheet" href="font-awsome/css/font-awesome.min.css">
    <link rel="stylesheet" href="styles/swiper.min.css">

    <!-- <link rel="stylesheet" href="styles/style.css"> -->
    <link rel="stylesheet" href="styles/register.css">
</head>

<body>

    <!--Navigation-->

    <div class="menu-mobile">
        <div class="menu-items">
            <a href="index.php" class="menu-link">Trang chủ</a>
            <a href="shop.php" class="menu-link">Cửa hàng</a>
            <a href="register.php" class="menu-link">Tài khoản</a>
            <a href="cart.php" class="menu-link">Giỏ hàng</a>
            <a href="contact.php" class="menu-link">Liên hệ</a>
        </div>
        <div class="menu-icon close">
            <span></span>
        </div>
    </div>
    </div>
    <nav>
        <a href="index.php" class="mainLogo"> <img src="assets/logo.png" alt=""></a>
        <div class="menu">
            <div class="menulinks">
                <a href="index.php" class="menuLink home">Trang chủ</a>
                <a href="shop.php" class="menuLink home">Cửa hàng</a>
                <a href="customer/my_account.php?my_orders" class="menuLink home">Tài khoản</a>
                <a href="cart.php" class="menuLink home">Giỏ hàng</a>
                <a href="contact.php" class="menuLink home">Liên hệ</a>
            </div>
        </div>
        <div class="iconWrapper">
            <!-- Form search -->
            <form method="get" action="result.php">
                <div class="mainNav__input">
                    <input type="search" name="user_query" placeholder="Tìm kiếm ...">
                    <button class="mainNav__btnSearch" type="submit"> <img src="assets/icon-search.svg" alt=""></button>
                </div>
            </form>
            <!--end Form search-->
            <a href="cart.php">
                <div class="shoppingCart">
                    <img src="assets/shopping-cart.svg" alt="">
                    <span class="itemNumber"><?php items(); ?></span>
                </div>
            </a>
            <?php
                if (!isset($_SESSION['customer_email'])) {
                    echo "
                        <a href='checkout.php'>
                            <div class='profile'>
                                <img src='customer/customer_images/customer_default.png' title='Đăng Nhập' alt=''>
                            </div>
                        </a>
                    ";
                } else {

                 $customer_session = $_SESSION['customer_email'];
            
                 $get_customer = "select * from customers where customer_email='$customer_session'";
            
                 $run_customer = mysqli_query($con,$get_customer);
            
                 $row_customer = mysqli_fetch_array($run_customer);
            
                 $customer_image = $row_customer['customer_image'];
            
                 $customer_name = $row_customer['customer_name'];

                 if(!isset($_SESSION['customer_email'])){
            
                }else{    
                    if ($customer_image=='') {

                        echo "
                            <a href='customer/my_account.php?my_orders'>
                                <div class='profile'>
                                    <img src='customer/customer_images/customer_default_2.png' title='Xem Hồ Sơ' alt=''>
                                </div>
                            </a>
                        ";

                    } else {

                        echo "
                            <a href='customer/my_account.php?my_orders'>
                                <div class='profile'>
                                    <img src='customer/customer_images/$customer_image' title='Xem Hồ Sơ' alt=''>
                                </div>
                            </a>
                        ";
                    }
                    }
                }
            
            ?>

            <div class="menu-icon open">
                <span></span>
            </div>
        </div>
    </nav>
    <!--end Navigation-->


    <div id="content">
        <!-- #content Begin -->
        <div class="container">
            <!-- container Begin -->


            <div class="col-md-9">
                <!-- col-md-9 Begin -->

                <div class="modal open">
                    <div class="wrapper">
                        <div class="content">
                            <div class="subtitle">Đăng ký</div>
                            <!--form-->
                            <form action="customer_register.php" method="post" enctype="multipart/form-data">
                                <div class="input-wrapper">
                                    <label for="name">Tên</label>
                                    <input name="c_name" id="name" type="text" placeholder="Nhập tên của bạn">
                                </div>

                                <div class="input-wrapper">
                                    <label for="password">Mật Khẩu</label>
                                    <input name="c_pass" id="password" type="password" placeholder="Mật khẩu" required>
                                </div>
                                <div class="input-wrapper">
                                    <label for="confirmpassword">Nhập Lại Mật Khẩu</label>
                                    <input id="confirmpassword" type="password" placeholder="Nhập lại mật khẩu"
                                        required>
                                </div>
                                <div class="input-wrapper">
                                    <label for="email">E-mail</label>
                                    <input name="c_email" id="email" type="text" placeholder="Nhập email của bạn"
                                        required>
                                </div>
                                <div class="input-wrapper">
                                    <label for="phone">Số điện thoại</label>
                                    <input name="c_contact" id="phone" type="text" placeholder="Di động" required>
                                </div>

                                <div class="input-wrapper">
                                    <label for="address">Địa Chỉ</label>
                                    <textarea name="c_address" cols="30" rows="10"
                                        placeholder="Địa chỉ giao hàng"></textarea>
                                </div>
                                <div class="input-wrapper">

                                    <input style=" padding: 0px; border-radius: 0px; margin-bottom: 0px"
                                        type="file" id="inputFile" class="inputFile" name="c_image" required>
                                    <label tabindex="0" for="inputFile" class="uploadIcon"></label>
                                    <label tabindex="0" for="inputFile" class="fileReturn"></label>
                                </div>

                                <button type="submit" name="register" class="btn">Tạo tài khoản</button>
                            </form>
                            <!--end form-->
                        </div>
                    </div>
                </div>

            </div><!-- col-md-9 Finish -->

        </div><!-- container Finish -->
    </div><!-- #content Finish -->


    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/mobile_menu.js"></script>

</body>

</html>


<?php 

if(isset($_POST['register'])){
    
    $c_name = $_POST['c_name'];
    
    $c_email = $_POST['c_email'];
    
    $c_pass = $_POST['c_pass'];
    
    $c_contact = $_POST['c_contact'];
    
    $c_address = $_POST['c_address'];
    
    $c_image = $_FILES['c_image']['name'];
    
    $c_image_tmp = $_FILES['c_image']['tmp_name'];
    
    $c_ip = getRealIpUser();
    
    move_uploaded_file($c_image_tmp,"customer/customer_images/$c_image");
    
    $insert_customer = "insert into customers (customer_name,customer_email,customer_pass,customer_contact,customer_address,customer_image,customer_ip) values ('$c_name','$c_email','$c_pass','$c_contact','$c_address','$c_image','$c_ip')";
    
    $run_customer = mysqli_query($con,$insert_customer);
    
    $sel_cart = "select * from cart where ip_add='$c_ip'";
    
    $run_cart = mysqli_query($con,$sel_cart);
    
    $check_cart = mysqli_num_rows($run_cart);
    
    if($check_cart>0){
        
        /// If register have items in cart ///
        
        $_SESSION['customer_email']=$c_email;
        
        echo "<script>alert('You have been Registered Sucessfully')</script>";
        
        echo "<script>window.open('checkout.php','_self')</script>";
        
    }else{
        
        /// If register without items in cart ///
        
        $_SESSION['customer_email']=$c_email;
        
        echo "<script>alert('You have been Registered Sucessfully')</script>";
        
        echo "<script>window.open('index.php','_self')</script>";
        
    }
    
}

?>