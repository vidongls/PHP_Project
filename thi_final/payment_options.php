<div class="boxWrapper">
    <div class="box pay"><!-- box Begin -->
    
    <?php 
        
        $session_email = $_SESSION['customer_email'];
        
        $select_customer = "select * from customers where customer_email='$session_email'";
        
        $run_customer = mysqli_query($con,$select_customer);
        
        $row_customer = mysqli_fetch_array($run_customer);
        
        $customer_id = $row_customer['customer_id'];
        
        ?>
        
        <h1 class="text-center">Thanh toán ngay</h1>  
        
        <p class="lead text-center"><!-- lead text-center Begin -->
            
            <a href="order.php?c_id=<?php echo $customer_id ?>"> Thanh toán </a>
            
        </p><!-- lead text-center Finish -->
        </h1>
        
    </div><!-- box Finish -->
</div>