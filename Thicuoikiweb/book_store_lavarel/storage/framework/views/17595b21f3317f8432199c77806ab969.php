<div class="top">
    <b href="#" class="main-title">SẢN PHẨM VỪA XEM</b>
</div>
<div class="bot">
    <?php if(isset($products)): ?>
        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="item">
                <?php echo $__env->make('frontend.components.product_item',['product' => $product], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <?php endif; ?>
</div>
<?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/frontend/pages/home/include/_recently.blade.php ENDPATH**/ ?>