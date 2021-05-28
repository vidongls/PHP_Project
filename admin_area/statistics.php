<?php 
    
    if(!isset($_SESSION['admin_email'])){
        
        echo "<script>window.open('login.php','_self')</script>";
        
    }else{

?>

<div class="row">
    <!-- row 1 begin -->
    <div class="col-lg-12">
        <!-- col-lg-12 begin -->
        <ol class="breadcrumb">
            <!-- breadcrumb begin -->
            <li class="active" style="text-transform:uppercase;">
                <!-- active begin -->

                <i class="fa fa-dashboard"></i> Bảng điều khiển / Thống kê

            </li><!-- active finish -->
        </ol><!-- breadcrumb finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 1 finish -->

<div class="row">
    <!-- row 2 begin -->
    <div class="col-lg-12">
        <!-- col-lg-12 begin -->
        <div class="panel panel-default">
            <!-- panel panel-default begin -->
            <div class="panel-heading">
                <!-- panel-heading begin -->
                <h3 class="panel-title" style="text-transform:uppercase;">
                    <!-- panel-title begin -->

                    <i class="fa fa-tags"></i> Thống kê
                </h3><!-- panel-title finish -->
            </div><!-- panel-heading finish -->

            <div class="panel-body">
                <!-- panel-body begin -->
                <div class="table-responsive">
                    <!-- table-responsive begin -->
                    <table class="table table-striped table-bordered table-hover">
                        <!-- table table-striped table-bordered table-hover begin -->
                        <form action="" method="POST">
                            <div class="datetimepicker1">
                                <label for="party">Chọn ngày tháng cần thống kê :</label><br/>
                                    Từ : <input id="time1" type="date" name="datefrom" min="2005/06/01T08:30"
                                    max="2025/05/30T16:30" required>  
                                    Đến : <input id="time2" type="date" name="dateto" min="2005/06/01T08:30"
                                    max="2025/05/30T16:30" required>
                                <span class="validity"></span>

                                <input type="submit" value="Xem">
                            </div>
                        </form>
                        <br />
                        <?php 
                        
                                $doanhthu = 0;
                                $get_orders = "select * from customer_orders where order_status = 'Complete'";
                                
                                $run_orders = mysqli_query($con,$get_orders);
                                $tong_doanh_thu = 0;
                                while($row_order=mysqli_fetch_array($run_orders)){
                                    
                                    $order_id = $row_order['order_id'];
                                    
                                    $customer_id = $row_order['customer_id'];
                                    
                                    $due_amount = $row_order['due_amount'];
                                    
                                    $invoice_no = $row_order['invoice_no'];
                                    $qty = $row_order['qty'];      
                                    $color = $row_order['color'];
                                    $order_date = $row_order['order_date'];
                                    $order_status = $row_order['order_status'];
                                    $doanhthu += $due_amount;
                                    $tong_doanh_thu += $doanhthu;
                                }
                                $tong_doanh_thu =  number_format($tong_doanh_thu)."";
                                echo"$tong_doanh_thu ";
                            ?>

                    </table><!-- table table-striped table-bordered table-hover finish -->
                </div><!-- table-responsive finish -->
            </div><!-- panel-body finish -->

        </div><!-- panel panel-default finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 2 finish -->
<?php  

    if(isset($_POST['submit'])){
        
       $get_datefrom = $_POST['datefrom'];
       $get_dateto = $_POST['dateto'];
       $get_sta = "select * from customers";
                                
       $run_c = mysqli_query($con,$get_sta);

       
    }

?>
<?php } ?>