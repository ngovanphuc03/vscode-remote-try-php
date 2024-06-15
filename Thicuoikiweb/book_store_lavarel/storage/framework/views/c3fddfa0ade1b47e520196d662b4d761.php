<?php $__env->startSection('css'); ?>
    <style>
        <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <b itemprop="url" href="/" title="Home"><span itemprop="title">Trang chủ</span></b>
                </li>
                <li>
                    <a itemprop="url" href="<?php echo e(route('get.product.list')); ?>" title="Sản phẩm"><span
                            itemprop="title">Sản phẩm</span></a>
                </li>

                <li>
                    <a itemprop="url" href="" title="Đăng nhập"><span itemprop="title"><?php echo e($product->pro_name); ?></span></a>
                </li>
                <div id="ex1" class="modal container">
                <?php if(count($images)>0): ?>
                <div class="container">
                    <?php
                        $i=0;
                    ?>
                    <?php $__currentLoopData = $images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    <div class="caption-container">
                        <p id="caption"></p>
                    </div>
                    <div class="row">
                        <?php $__currentLoopData = $images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $img): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="column">
                            <img class="demo cursor" src=" <?php echo e(pare_url_file($img->pi_slug)); ?>" style="width:100%" onclick="currentSlide(<?php echo e($i++); ?>)">
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </div>
                </div>
                <?php else: ?>
                    <h3>Không có ảnh nào </h3>
                <?php endif; ?>
            </div>

            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">

                    <a href="<?php echo e(route('get.product.detail',$product->pro_slug . '-'.$product->id )); ?>" title=""
                       class="">
                        <img alt="" style="max-width: 100%;width: 100%;height: auto" src="<?php echo e(pare_url_file($product->pro_avatar)); ?>"
                             class="lazyload">
                    </a>
                    <p style="display: flex;align-items: center;justify-content: center;margin-top: 20px"><a href="#ex1" rel="modal:open" class="btn btn-success" style="background-color:#288ad6;">Xem
                            Album ảnh (4)</a></p>
                    
                </div>
                <div class="right" id="product-detail" data-id="<?php echo e($product->id); ?>">
                    <h1><?php echo e($product->pro_name); ?></h1>
                    <div class="right__content">
                        <div class="info">

                            <div class="prices">
                                <?php if($product->pro_sale): ?>
                                    <b>Giá niêm yết:
                                    <span class="value"><?php echo e(number_format($product->pro_price,0,',','.')); ?>đ</span>
                                    </b>
                                    <?php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    ?>
                                    <p>
                                        <b>Giá bán:<b>
                                        <span
                                            class="value price-new"><?php echo e(number_format($price,0,',','.')); ?>đ</span>
                                        <span class="sale">-<?php echo e($product->pro_sale); ?>%</span>
                                    </p>
                                <?php else: ?>
                                    <p>
                                        Giá bán: <span class="value price-new"><?php echo e(number_format($product->pro_price,0,',','.')); ?> đ</span>
                                    </p>
                                <?php endif; ?>
                                <p>
                                    <span>View:&nbsp</span>
                                    <span><?php echo e($product->pro_view); ?></span>
                                </p>
                            </div>
                            <div class="btn-cart">
                                <a href="<?php echo e(route('get.shopping.add', $product->id)); ?>" title=""
                                   onclick="add_cart_detail('17617',0);" class="muangay">
                                    <span>Thêm vào</span>
                                    <span>Giỏ hàng</span>
                                </a>
                                <a href="<?php echo e(route('ajax_get.user.add_favourite', $product->id)); ?>"
                                   title="Thêm sản phẩm yêu thích"
                                   class="muatragop  <?php echo e(!\Auth::id() ? 'js-show-login' : 'js-add-favourite'); ?>">
                                    <span>Yêu thích</span>
                                    <span>Sản phẩm</span>
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title">Thông tin</h2>
                                <div class="infomation__group">

                                    <div class="item">
                                        <p class="text1">Danh mục:</p>
                                        <h3 class="text2">
                                            <?php if(isset($product->category->c_name)): ?>
                                                <a href="<?php echo e(route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id); ?>"><?php echo e($product->category->c_name); ?></a>
                                            <?php else: ?>
                                                "[N\A]"
                                            <?php endif; ?>
                                        </h3>
                                    </div>
                                    <?php $__currentLoopData = $attribute; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $attr): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="item">
                                        <?php $__currentLoopData = $attr; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k => $at): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if(in_array($k, $attributeOld)): ?>
                                                <p class="text1"><?php echo e($key); ?>:</p>
                                                <h3 class="text2"><?php echo e($at['atb_name']); ?></h3>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </div>
                            </div>

                        </div>
                        <?php if(isset($event2)): ?>
                            <div class="ads">
                                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                                                                                  src="<?php echo e(pare_url_file($event2->e_banner)); ?>"></a>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
           <?php if(!empty($product->pro_content)): ?>
    <div class="reviews content_text" style="float: left; width: 100%;">
        <h4 class="reviews-title"><b class="product_details_title" style="color: cornflowerblue; font-weight: 700">Chi tiết sản phẩm</b></h4>
        <div class="product_details_content" style="font-weight: 400">
            <?php echo $product->pro_content; ?>

        </div>

    </div>
<?php endif; ?>

            <?php echo $__env->make('frontend.pages.product_detail.include._inc_ratings', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST">
                        <input type="hidden" name="productId" value="<?php echo e($product->id); ?>">
                        <div class="form-group">
                            <textarea placeholder="Mời bạn để lại bình luận ..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>


                            </p>
                            <button class=" <?php echo e(\Auth::id() ? 'js-save-comment' : 'js-show-login'); ?>">Gửi bình luận</button>
                        </div>
                    </form>
                </div>
                <?php echo $__env->make('frontend.pages.product_detail.include._inc_list_comments', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>

        </div>
        <div class="card-body product-des">
            <div class="left">
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                <?php $__currentLoopData = $productsSuggests; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="item">
                                        <?php echo $__env->make('frontend.components.product_item',['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                <?php if(isset($event3)): ?>
                <a href="#" title="Giam giá" target="_blank"><img alt="Hoan tien" style="width: 100%"
                                                                  src="<?php echo e(pare_url_file($event3->e_banner)); ?>"></a>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <?php if($isPopupCaptcha >= 2): ?>
        <?php echo $__env->make('frontend.pages.product_detail.include._inc_popup_captcha', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php endif; ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
    <script>
		var ROUTE_COMMENT = '<?php echo e(route('ajax_post.comment')); ?>';
		var CSS = "<?php echo e(asset('css/product_detail.min.css')); ?>";
		var URL_CAPTCHA = '<?php echo e(route('ajax_post.captcha.resume')); ?>'
    </script>
    <script src="<?php echo e(asset('js/product_detail.js')); ?>" type="text/javascript"></script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_frontend', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/frontend/pages/product_detail/index.blade.php ENDPATH**/ ?>