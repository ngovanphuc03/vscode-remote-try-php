<?php $__currentLoopData = $categoriesHot; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <div class="product-five">
        <div class="top">
            <a href="#" class="main-title"><?php echo e($category->c_name); ?></a>
        </div>

        <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
            <?php if(isset($category->products)): ?>
                <?php $__currentLoopData = $category->products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="item">
                        <?php echo $__env->make('frontend.components.product_item',['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </div>
    </div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/frontend/pages/home/include/_inc_product_by_category_hot.blade.php ENDPATH**/ ?>