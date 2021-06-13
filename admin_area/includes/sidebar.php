<?php

if (!isset($_SESSION['admin_email'])) {

    echo "<script>window.open('login.php','_self')</script>";
} else {

?>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <!-- navbar navbar-inverse navbar-fixed-top begin -->
    <div class="navbar-header">
        <!-- navbar-header begin -->

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <!-- navbar-toggle begin -->

            <span class="sr-only">Điều hướng</span>

            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>

        </button><!-- navbar-toggle finish -->

        <a href="index.php?dashboard" class="navbar-brand">Xe máy Đông Vi</a>

    </div><!-- navbar-header finish -->

    <ul class="nav navbar-right top-nav">
        <!-- nav navbar-right top-nav begin -->

        <li class="dropdown">
            <!-- dropdown begin -->

            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- dropdown-toggle begin -->

                <i class="fa fa-user"></i> <?php echo $admin_name;  ?> <b class="caret"></b>

            </a><!-- dropdown-toggle finish -->

            <ul class="dropdown-menu">
                <!-- dropdown-menu begin -->
                <li>
                    <!-- li begin -->
                    <a href="index.php?user_profile=<?php echo $admin_id; ?>">
                        <!-- a href begin -->

                        <i class="fa fa-fw fa-user"></i> Hồ sơ

                    </a><!-- a href finish -->
                </li><!-- li finish -->

                <li>
                    <!-- li begin -->
                    <a href="index.php?view_products">
                        <!-- a href begin -->

                        <i class="fa fa-fw fa-envelope"></i>Sản phẩm

                        <span class="badge"><?php echo $count_products; ?></span>

                    </a><!-- a href finish -->
                </li><!-- li finish -->

                <li>
                    <!-- li begin -->
                    <a href="index.php?view_customers">
                        <!-- a href begin -->

                        <i class="fa fa-fw fa-users"></i> Khách hàng

                        <span class="badge"><?php echo $count_customers; ?></span>

                    </a><!-- a href finish -->
                </li><!-- li finish -->

                <li>
                    <!-- li begin -->
                    <a href="index.php?view_cats">
                        <!-- a href begin -->

                        <i class="fa fa-fw fa-gear"></i> Danh mục sản phẩm

                        <span class="badge"><?php echo $count_p_categories; ?></span>

                    </a><!-- a href finish -->
                </li><!-- li finish -->

                <li class="divider"></li>

                <li>
                    <!-- li begin -->
                    <a href="logout.php">
                        <!-- a href begin -->

                        <i class="fa fa-fw fa-power-off"></i> Đăng xuất

                    </a><!-- a href finish -->
                </li><!-- li finish -->

            </ul><!-- dropdown-menu finish -->

        </li><!-- dropdown finish -->

    </ul><!-- nav navbar-right top-nav finish -->

    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <!-- collapse navbar-collapse navbar-ex1-collapse begin -->
        <ul class="nav navbar-nav side-nav">
            <!-- nav navbar-nav side-nav begin -->
            <li>
                <!-- li begin -->
                <a href="index.php?dashboard">
                    <!-- a href begin -->

                    <i class="fa fa-fw fa-dashboard"></i> Bảng điều khiển

                </a><!-- a href finish -->

            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#products">
                    <!-- a href begin -->

                    <i class="fa fa-fw fa-tag"></i> Sản phẩm
                    <i class="fa fa-fw fa-caret-down"></i>

                </a><!-- a href finish -->

                <ul id="products" class="collapse">
                    <!-- collapse begin -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?insert_product"> Thêm sản phẩm </a>
                    </li><!-- li finish -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?view_products"> Xem danh sách</a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->

            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#p_cat">
                    <!-- a href begin -->

                    <i class="fa fa-fw fa-edit"></i> Danh mục sản phẩm
                    <i class="fa fa-fw fa-caret-down"></i>

                </a><!-- a href finish -->

                <ul id="p_cat" class="collapse">
                    <!-- collapse begin -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?insert_p_cat"> Thêm danh mục sản phẩm </a>
                    </li><!-- li finish -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?view_p_cats"> Xem danh mục sản phẩm </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->

            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#cat">
                    <!-- a href begin -->

                    <i class="fa fa-fw fa-book"></i> Đối tác
                    <i class="fa fa-fw fa-caret-down"></i>

                </a><!-- a href finish -->

                <ul id="cat" class="collapse">
                    <!-- collapse begin -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?insert_cat"> Thêm đối tác </a>
                    </li><!-- li finish -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?view_cats"> Xem đối tác </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->

            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#slides">
                    <!-- a href begin -->

                    <i class="fa fa-fw fa-gear"></i> Slides
                    <i class="fa fa-fw fa-caret-down"></i>

                </a><!-- a href finish -->

                <ul id="slides" class="collapse">
                    <!-- collapse begin -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?insert_slide"> Thêm Slide </a>
                    </li><!-- li finish -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?view_slides"> Xem danh sách Slides </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->

            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="index.php?view_customers">
                    <!-- a href begin -->
                    <i class="fa fa-fw fa-users"></i> Khách hàng
                </a><!-- a href finish -->
            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="index.php?view_orders">
                    <!-- a href begin -->
                    <i class="fa fa-fw fa-book"></i> Đơn đặt hàng
                </a><!-- a href finish -->
            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="index.php?view_payments">
                    <!-- a href begin -->
                    <i class="fa fa-fw fa-money"></i> Các khoản thanh toán
                </a><!-- a href finish -->
            </li><!-- li finish -->


            <li>
                <!-- li begin -->
                <a href="index.php?edit_css">
                    <!-- a href begin -->
                    <i class="fa fa-fw fa-pencil"></i> Chỉnh sửa CSS
                </a><!-- a href finish -->
            </li><!-- li finish -->
            <li>
                <!-- li begin -->
                <a href="#" data-toggle="collapse" data-target="#users">
                    <!-- a href begin -->

                    <i class="fa fa-fw fa-users"></i> Admin
                    <i class="fa fa-fw fa-caret-down"></i>

                </a><!-- a href finish -->

                <ul id="users" class="collapse">
                    <!-- collapse begin -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?insert_user"> Thêm người dùng </a>
                    </li><!-- li finish -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?view_users"> Xem danh sách </a>
                    </li><!-- li finish -->
                    <li>
                        <!-- li begin -->
                        <a href="index.php?user_profile=<?php echo $admin_id; ?>"> Sửa thông tin </a>
                    </li><!-- li finish -->
                </ul><!-- collapse finish -->

            </li><!-- li finish -->

            <li>
                <!-- li begin -->
                <a href="logout.php">
                    <!-- a href begin -->
                    <i class="fa fa-fw fa-power-off"></i> Đăng xuất
                </a><!-- a href finish -->
            </li><!-- li finish -->

        </ul><!-- nav navbar-nav side-nav finish -->
    </div><!-- collapse navbar-collapse navbar-ex1-collapse finish -->

</nav><!-- navbar navbar-inverse navbar-fixed-top finish -->


<?php } ?>