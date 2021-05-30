<?php 
    
    if (!isset($_SESSION['admin_email'])) {
        
        echo "<script>window.open('login.php','_self')</script>";
        
    } else {

?>

<?php

    if (isset($_GET['confirm_yes'])) {
        $confirm_product_id = $_GET['confirm_yes'];
        $order_status = "Complete";
        $update_customer_order = "update customer_orders set order_status='$order_status' where order_id='$confirm_product_id'";
        $update_customer_pending = "update pending_orders set order_status='$order_status' where order_id='$confirm_product_id'";
        $row_update_customer_order = mysqli_query($con, $update_customer_order);
        $row_update_pending = mysqli_query($con, $update_customer_pending);

        if ($row_update_customer_order) {
            echo "<script>alert('Bạn đã xác nhận sản phẩm này đã thanh toán')</script>";
            echo "<script>window.open('index.php?view_orders','_self')</script>";
        }
        
    }
?>
<?php } ?>