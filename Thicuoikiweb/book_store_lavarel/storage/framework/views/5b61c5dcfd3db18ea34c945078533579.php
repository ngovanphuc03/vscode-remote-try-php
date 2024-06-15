<div id="footer" style="background: ##75a0ad !important">
    <div class="container footer">
        <div class="footer__left">
            <div class="top">
                <div class="item">
                    <div class="title"><b>Về chúng tôi</b></div>
                    <ul>
                        <li>
                            <a href="<?php echo e(route('get.blog.home')); ?>">Bài viết</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.product.list')); ?>">Sản phẩm</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.register')); ?>">Đăng ký</a>
                        </li>
                        <li>
                            <a href="<?php echo e(route('get.login')); ?>">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title"><b>Tin tức</b></div>
                    <ul>
                        <?php if(isset($menus)): ?>
                            <?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <a title="<?php echo e($menu->mn_name); ?>"
                                        href="<?php echo e(route('get.article.by_menu',$menu->mn_slug.'-'.$menu->id)); ?>">
                                        <?php echo e($menu->mn_name); ?>

                                    </a>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                        <li><a href="<?php echo e(route('get.contact')); ?>">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title"><b>Chính sách</b></div>
                    <ul>
                        <li><a href="<?php echo e(route('get.static.shopping_guide')); ?>">Hướng dẫn mua hàng</a></li>
                        <li><a href="<?php echo e(route('get.static.return_policy')); ?>">Chính sách đổi trả</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title"><b>Danh mục nổi bật</b></div>
                    <?php if(isset($categoriesHot)): ?>
                        <ul>
                            <?php $__currentLoopData = $categoriesHot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li>
                                    <a href="<?php echo e(route('get.category.list', $item->c_slug.'-'.$item->id)); ?>" title="<?php echo e($item->c_name); ?>"><?php echo e($item->c_name); ?></a>
                                </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>
                    <?php endif; ?>
                </div>
            </div>
            <div class="bot">
                <div class="social">
                    <div class="title"><b>KẾT NỐI VỚI CHÚNG TÔI</b></div>
                    <p>
                        <a href="3" class="fa fa fa-youtube"></a>
                        <a href="" class="fa fa-facebook-official"></a>
                        <a href="" class="fa fa-twitter"></a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/frontend/components/footer.blade.php ENDPATH**/ ?>