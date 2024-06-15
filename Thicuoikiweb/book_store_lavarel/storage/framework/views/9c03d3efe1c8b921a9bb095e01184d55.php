<?php $__env->startSection('css'); ?>
    <style>
        <?php $style = file_get_contents('css/user.min.css');echo $style;?>
        .ratings span i {
                color: #eff0f5;
            }
            .ratings span.active i {
                color: #faca51;
            }
    </style>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('content'); ?>
    <section>
        <div class="title">Danh sách đánh giá của bạn</div>

        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" style="width: 50px">STT</th>
                        <th scope="col" style="text-align: left;">Tên sản phẩm</th>
                        <th scope="col" style="text-align: center;">Rating</th>
                        <th scope="col" style="text-align: center;">Bình luận</th>
                        <th scope="col" style="text-align: center;">Thời gian</th>
                        <th scope="col" style="text-align: center;">Hành động</th>
                    </tr>
                    </thead>

                    <?php if(isset($ratings)): ?>
                    <tbody>
                        <?php $__currentLoopData = $ratings; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $rating): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td style="text-align: center;"><?php echo e((($ratings->currentPage() - 1) * $ratings->perPage()) + ( $key + 1)); ?></td>
                                <td style="width: 30%;text-align: left"><?php echo e($rating->product->pro_name ?? "[N\A]"); ?></td>
                                <td style="text-align: center;">
                                    <div class="ratings">
                                        <?php for($i = 1 ; $i <= 5 ; $i ++): ?>
                                            <span class="<?php echo e($i <= $rating->r_number ? 'active' : ''); ?>"><i class="fa fa-star"></i></span>
                                        <?php endfor; ?>
                                    </div>
                                </td>
                                <td style="text-align: center;"><?php echo e($rating->r_content); ?></td>
                                <td style="text-align: center;"><?php echo e($rating->created_at); ?></td>
                                <td style="text-align: center;">
                                    <a href="<?php echo e(route('get.user.rating.delete', $rating->id)); ?>" class="btn btn-xs label-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
        <div style="display: block;">
            <?php echo $ratings->appends($query ?? [])->links(); ?>

        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/user/rating.blade.php ENDPATH**/ ?>