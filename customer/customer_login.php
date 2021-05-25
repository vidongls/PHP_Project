<div class="modal">
        <div class="wrapper">
            <div class="content">
                <div class="subtitle">Đăng nhập</div>
                <!--form-->
                <form action="checkout.php" method="post">
                    
                    <div class="input-wrapper">
                        <label for="email">E-mail</label>
                        <input name="c_email" id="email" type="text" placeholder="Nhập email của bạn" name="customer_email" required>
                    </div>
                    
                    <div class="input-wrapper">
                        <label for="password">Mật Khẩu</label>
                        <input name="c_pass" id="password" type="password" placeholder="Mật khẩu" name="customer_password" required>
                    </div>

                    <div class="account">

                        <p>Chưa có tài khoản? <a class="link" href="customer_register.php">Đăng ký tại đây</a></p>
                    </div>
                
                    <button value="Login" name="login" class="cta">Đăng Nhập</button>
                </form>
                <!--end form-->
            </div>
        </div>
    </div>

<?php 

if(isset($_POST['login'])){
    
    $customer_email = $_POST['c_email'];
    
    $customer_pass = $_POST['c_pass'];
    
    $select_customer = "select * from customers where customer_email='$customer_email' AND customer_pass='$customer_pass'";
    
    $run_customer = mysqli_query($con,$select_customer);
    
    $get_ip = getRealIpUser();
    
    $check_customer = mysqli_num_rows($run_customer);
    
    $select_cart = "select * from cart where ip_add='$get_ip'";
    
    $run_cart = mysqli_query($con,$select_cart);
    
    $check_cart = mysqli_num_rows($run_cart);
    
    if($check_customer==0){
        
       echo "<script>alert('Email hoặc mật khẩu không Chính Xác, Vui Lòng Nhập Lại.')</script>";
        
        exit();
        
    }
    
    if($check_customer==1 AND $check_cart==0){
        
        $_SESSION['customer_email']=$customer_email;
        
        echo "<script>alert('Đăng Nhập Thành Công')</script>";
        
       echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
        
    }else{
        
        $_SESSION['customer_email']=$customer_email;
        
        echo "<script>alert('Đăng Nhập Thành Công')</script>";
        
        echo "<script>window.open('customer/my_account.php?my_orders','_self')</script>";
        
    }
    
}

?>