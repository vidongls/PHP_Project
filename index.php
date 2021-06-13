<?php 

    $active='Home';
    include("includes/header_home.php");

?>

    <!--Swiper-->
    <div class="swiper-container">
        <!--Additional required wrapper-->
        <div class="swiper-wrapper">
            <!--Slider-->
            <!-- php get slides -->
            <?php

                    $get_slides = "select * from slider";

                    $run_slides = mysqli_query($con, $get_slides);

                    while ($row_slide = mysqli_fetch_array($run_slides)) {

                        $slide_name = $row_slide['slide_name'];

                        $slide_image = $row_slide['slide_image'];

                        $slide_url = $row_slide['slide_url'];
                    
                
                ?>
                
                <div class="swiper-slide" style="background-image: url('admin_area/slides_images/<?php echo $slide_image; ?>')">
                
                </div>

                <?php } ?>
            <!-- end php get slides -->
            <!--end Slider-->

        </div>
        <!--if we need pagination-->
        <div class="swiper-pagination"></div>

        <!-- If we need navigation buttons -->
        <div class="swiper-button-prev"><span></span></div>
        <div class="swiper-button-next"><span></span></div>

    </div>
    <!--end Swiper-->
    <section class="wrapperCard">
        <h3 class="section__title">Sản phẩm mới</h3>
        <div class="cards">
            <!--card-->
            <!-- php get product -->
            <?php 

                $get_products = "select * from products order by 1 DESC LIMIT 0,8";

                $run_products = mysqli_query($con, $get_products);

                while ($row_products = mysqli_fetch_array($run_products)) {

                    $product_id = $row_products['product_id'];

                    $product_title = $row_products['product_title'];

                    $product_price = $row_products['product_price'];

                    $product_img1 = $row_products['product_img1'];

                    $product_label = $row_products['product_label'];

                    $product_label = $row_products['product_label'];
                    
                   $product_price = number_format($product_price)."";
            
            ?>
            <a href="details.php?pro_id=<?php echo $product_id; ?>" rel="noopenner" class="card">
                <?php
                    
                    if ($product_label == "sale") {

                        echo "<div class='sale'>Sale</div>";

                    } else {

                        echo "<div class='new'>Mới!</div>";

                    }

                ?>
                <div class="card__image">
                    <img src="admin_area/product_images/<?php echo $product_img1; ?>" alt="">
                </div>

                <div class="card__content">
                    <article class="card__text">
                        <h2 class="card__title"><?php echo $product_title; ?></h2>
                        <div class="card__price">
                            <?php
                            
                                if ($product_label == "sale") {

                                    echo "
                                       
                                        <p class='card__priceOriginal'>$product_price ₫</p>
                                    ";
                                } else {

                                    echo "<p class='card__priceFinal'>$product_price  ₫</p>";

                                }

                            ?>
                        </div>
                    </article>

                    <div class="card__icon">
                        <p class="card__detail">Chi tiết<span>+</span></p>
                        <button class="btn"><span>Xem</span></button>
                    </div>
                </div>
            </a>
            <?php } ?>
            <!-- end php get product -->
            <!--end Card-->
        </div>

        <a href="shop.php">
            <button class="button">Xem Thêm</button>
        </a>
        
    </section>
   <!-- Back to top -->


<?php 
    
    include("includes/footer.php");
    
?>

<script src="js/jquery-331.min.js"></script>
<script src="js/bootstrap-337.min.js"></script>
<script src="js/swiper.min.js"></script>
    <!--script-->
    <script  src="js/main.js"></script>
    <script  src="js/mobile_menu.js"></script>
    <script>
        // swiper   
        var mySwiper = new Swiper('.swiper-container', {
            effect: '',
            loop: false,
            speed: 1000,
            slidesPerView: 1,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            pagination: {
                el: '.swiper-pagination',
                type: 'bullets',
                clickable: 'true'
            },
        });

    </script>

</body>

</html>