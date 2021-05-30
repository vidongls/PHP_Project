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

                <i class="fa fa-dashboard"></i> Bảng điều khiển / đơn hàng

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

                    <i class="fa fa-tags"></i> Bảng điều khiển / đơn hàng

                </h3><!-- panel-title finish -->
            </div><!-- panel-heading finish -->

            <div class="panel-body">
                <!-- panel-body begin -->
                <div class="table-responsive">
                    <!-- table-responsive begin -->
                    <table class="table table-striped table-bordered table-hover">
                        <!-- table table-striped table-bordered table-hover begin -->

                        <thead>
                            <!-- thead begin -->
                            <tr>
                                <!-- tr begin -->
                                <th> STT: </th>
                                <th>Địa chỉ Email</th>
                                <th> Số hoá đơn</th>
                                <th> Tên sản phẩm</th>
                                <th> Số lượng</th>
                                <th> Màu sắc</th>
                                <th> Ngày đặt hàng</th>
                                <th> Tổng tiền </th>
                                <th> Trạng thái </th>
                                <th> Xoá</th>
                                <th>Xác nhận thanh toán</th>
                            </tr><!-- tr finish -->
                        </thead><!-- thead finish -->

                        <tbody>
                            <!-- tbody begin -->

                            <?php 
          
                                $i=0;
                            
                                $get_orders = "select * from pending_orders";
                                
                                $run_orders = mysqli_query($con,$get_orders);
          
                                while($row_order=mysqli_fetch_array($run_orders)){
                                    
                                    $order_id = $row_order['order_id'];
                                    
                                    $c_id = $row_order['customer_id'];
                                    
                                    $invoice_no = $row_order['invoice_no'];
                                    
                                    $product_id = $row_order['product_id'];
                                    
                                    $qty = $row_order['qty'];
                                    
                                    $color = $row_order['color'];
                                    
                                    $order_status = $row_order['order_status'];
                                    
                                    $get_products = "select * from products where product_id='$product_id'";
                                    
                                    $run_products = mysqli_query($con,$get_products);
                                    
                                    $row_products = mysqli_fetch_array($run_products);
                                    
                                    $product_title = $row_products['product_title'];
                                    
                                    $get_customer = "select * from customers where customer_id='$c_id'";
                                    
                                    $run_customer = mysqli_query($con,$get_customer);
                                    
                                    $row_customer = mysqli_fetch_array($run_customer);
                                    
                                    $customer_email = $row_customer['customer_email'];
                                    
                                    $get_c_order = "select * from customer_orders where order_id='$order_id'";
                                    
                                    $run_c_order = mysqli_query($con,$get_c_order);
                                    
                                    $row_c_order = mysqli_fetch_array($run_c_order);
                                    
                                    $order_date = $row_c_order['order_date'];
                                    
                                    $order_amount = $row_c_order['due_amount'];
                                    
                                    $i++;
                            
                            ?>

                            <tr>
                                <!-- tr begin -->
                                <td> <?php echo $i; ?> </td>
                                <td> <?php echo $customer_email; ?> </td>
                                <td> <?php echo $invoice_no; ?></td>
                                <td> <?php echo $product_title; ?> </td>
                                <td> <?php echo $qty; ?></td>
                                <td> <?php echo $color; ?> </td>
                                <td> <?php echo $order_date; ?> </td>
                                <td> <?php echo number_format( $order_amount).""; ?> đ</td>
                                <td>

                                    <?php 
                                    
                                        if($order_status=='Pending'){
                                            
                                            echo 'Đang xử lý';
                                            
                                        }else{
                                            
                                            echo 'Hoàn thành';
                                            
                                        }
                                    
                                    ?>

                                </td>
                                
                                <td>

                                    <a href="index.php?delete_order=<?php echo $order_id; ?>">

                                        <i class="fa fa-trash-o"></i> Xoá

                                    </a>

                                </td>


                                
                                <td>
                                <a href="index.php?confirm_yes=<?php echo $order_id; ?>" class="btn btn-primary btn-sm btn-confim"> Xác nhận</a>
                                <a href="index.php?confirm_no=<?php echo $order_id; ?>" class="btn btn-primary btn-sm"> Huỷ xác nhận </a>
                                </td>

                                
                                </tr><!-- tr finish -->

                            <?php } ?>

                        </tbody><!-- tbody finish -->

                    </table><!-- table table-striped table-bordered table-hover finish -->
                </div><!-- table-responsive finish -->
            </div><!-- panel-body finish -->

        </div><!-- panel panel-default finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 2 finish -->

<?php } ?>