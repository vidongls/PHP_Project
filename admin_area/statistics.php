<?php

if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";
} else {

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
                                <label for="party">Chọn ngày tháng cần thống kê :</label><br />
                                Từ : <input id="time1" type="date" name="datefrom" required>
                                Đến : <input id="time2" type="date" name="dateto" required>
                                <span class="validity"></span>

                                <input type="submit" value="Xem">
                            </div>
                        </form>

                        <br />
                        <thead>
                            <tr>
                                <!-- tr begin -->
                                <th> STT </th>
                                <th> Số hoá đơn </th>
                                <th> Tổng tiền </th>
                                <th> Phương thức </th>

                                <th> Ngày thanh toán </th>
                            </tr><!-- tr finish -->
                        </thead>
                        <?php
                            $get_payment = "select * from payments";
                            //SELECT * from payments WHERE `payment_date` BETWEEN '2021/05/30' AND '2021/06/30'
                            $run_payment = mysqli_query($con, $get_payment);
                            $tong_doanh_thu = 0;
                            $i = 0;
                            while ($row_order = mysqli_fetch_array($run_payment)) {

                                $payment_id = $row_order['payment_id'];

                                $amount = $row_order['amount'];

                                $invoice_no = $row_order['invoice_no'];

                                $payment_date = $row_order['payment_date'];

                                $payment_mode = $row_order['payment_mode'];

                                $tong_doanh_thu += $amount;

                                $i++;

                            ?>
                        <thead>
                            <!-- thead begin -->
                            <tr>
                                <!-- tr begin -->
                                <td><?php echo $i; ?></td>
                                <td><?php echo $invoice_no; ?></td>
                                <td><?php echo number_format($amount) . " đ"; ?></td>
                                <td><?php echo $payment_mode; ?></td>
                                <td><?php echo $payment_date; ?></td>
                            </tr><!-- tr finish -->
                            <?php } ?>

                        </thead><!-- thead finish -->

                    </table><!-- tble table-striped table-bordered table-hover finish -->
                </div><!-- table-responsive finish -->
                <div class="h4">Tổng doanh thu : <?php $tong_doanh_thu =  number_format($tong_doanh_thu) . "";
                                                        echo "$tong_doanh_thu đ"; ?></div>
            </div><!-- panel-body finish -->

        </div><!-- panel panel-default finish -->
    </div><!-- col-lg-12 finish -->
</div><!-- row 2 finish -->
<?php

    if (isset($_POST['submit'])) {

        $get_datefrom = $_POST['datefrom'];
        $get_dateto = $_POST['dateto'];
        $get_sta = "select * from customers";

        $run_c = mysqli_query($con, $get_sta);
    }

    ?>
<?php } ?>