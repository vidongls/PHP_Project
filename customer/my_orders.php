<center>
    <!--  center Begin  -->

    <h1> Đơn hàng của tôi </h1>

    <p class="lead"> Đơn hàng của bạn tại đây</p>

    <p class="text-muted">

        Nếu bạn có vấn đề <a href="../contact.php">Liên hệ chúng tôi</a>. Online <strong>24/7</strong>

    </p>

</center><!--  center Finish  -->


<hr>


<div class="table-responsive">
    <!--  table-responsive Begin  -->

    <table class="table table-bordered table-hover">
        <!--  table table-bordered table-hover Begin  -->

        <thead>
            <!--  thead Begin  -->

            <tr>
                <!--  tr Begin  -->
                <th>STT</th>
                <th>Số tiền</th>
                <th>Mã đơn hàng</th>
                <th>Số lượng</th>
                <th>Màu</th>
                <th>Ngày đặt hàng</th>
                <th>Trạng thái</th>
                <th>Lựa chọn</th>
            </tr><!--  tr Finish  -->

        </thead><!--  thead Finish  -->

        <tbody>
            <!--  tbody Begin  -->

            <?php

            $customer_session = $_SESSION['customer_email'];

            $get_customer = "select * from customers where customer_email='$customer_session'";

            $run_customer = mysqli_query($con, $get_customer);

            $row_customer = mysqli_fetch_array($run_customer);

            $customer_id = $row_customer['customer_id'];

            $get_orders = "select * from customer_orders where customer_id='$customer_id'";

            $run_orders = mysqli_query($con, $get_orders);

            $i = 0;

            while ($row_orders = mysqli_fetch_array($run_orders)) {

                $order_id = $row_orders['order_id'];

                $due_amount = $row_orders['due_amount'];

                $invoice_no = $row_orders['invoice_no'];

                $qty = $row_orders['qty'];

                $color = $row_orders['color'];

                $order_date = substr($row_orders['order_date'], 0, 11);

                $order_status = $row_orders['order_status'];

                $i++;



            ?>

            <tr>
                <!--  tr Begin  -->

                <th> <?php echo $i; ?> </th>
                <td> <?php echo number_format($due_amount) . ""; ?> đ</td>
                <td> <?php echo $invoice_no; ?> </td>
                <td> <?php echo $qty; ?> </td>
                <td> <?php echo $color; ?> </td>

                <td> <?php $date = date_create($order_date);
                            echo date_format($date, "m/d/Y");  ?> </td>
                <td>
                    <?php

                        if ($order_status == 'Complete') {

                            echo 'Đã xác nhận';
                        } else {

                            echo 'Chưa xác nhận';
                        }
                        ?>
                </td>
                <td>
                    <?php

                        if ($order_status == 'Complete') {
                            echo " <a href='#' target='_blank' class='btn btn-primary btn-sm disabled'>Đã thanh toán </a>";
                        } else {
                            echo " <a href='confirm.php?order_id=$order_id' target='_blank' class='btn btn-primary btn-sm'> Xác nhận thanh toán </a>";
                        }
                        ?>
                </td>

            </tr><!--  tr Finish  -->

            <?php } ?>

        </tbody><!--  tbody Finish  -->

    </table><!--  table table-bordered table-hover Finish  -->

</div><!--  table-responsive Finish  -->