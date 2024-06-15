<table class="table table-condensed">
    <tbody>
        <tr>
            <th style="width: 10px">#</th>
            <th>Name</th>
            <th>Avatar</th>
            <th>Price</th>
            <th>Qty</th>
            <th>Total</th>
            <th>Action</th>
        </tr>
        <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td>#<?php echo e($item->id); ?>.</td>
                <td><a href=""><?php echo e($item->product->pro_name ?? "[N\A]"); ?></a></td>
                <td>
                    <img alt="" style="width: 60px;height: 80px" src="<?php echo e(pare_url_file($item->product->pro_avatar ?? "")); ?>" class="lazyload">
                </td>
                <td><?php echo e(number_format($item->od_price,0,',','.')); ?> đ</td>
                <td><?php echo e($item->od_qty); ?></td>
                <td><?php echo e(number_format($item->od_price * $item->od_qty,0,',','.')); ?> đ</td>
                <td>
                    <a href="<?php echo e(route('ajax_admin.transaction.order_item', $item->id)); ?>" class="btn btn-xs btn-danger js-delete-order-item">Delete</a>
                </td>
            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
</table><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/components/orders.blade.php ENDPATH**/ ?>