<?php $__env->startSection('css'); ?>
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
        
        .css-tooltip:hover:after {
            content: attr(data-tooltip);
            position: absolute;
            z-index: 1;
            bottom: 100%;
            right: 0;
            width: 100%;
            background-color: rgba(251, 88, 88, 0.86);
            font-size: 11px;
            line-height: 1.6em;
            font-weight: 400;
            text-decoration: none;
            text-transform: none;
            text-align: center;
            color: #fff;
            padding: 5px;
            border-radius: 5px;
        }
    </style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section>
        <div class="title">Danh sách đơn hàng</div>
        <form class="form-inline">
            <div class="form-group " style="margin-right: 10px;">
                <input type="text" class="form-control" value="<?php echo e(Request::get('id')); ?>" name="id" placeholder="ID">
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <select name="status" class="form-control">
                    <option value="">Trạng thái</option>
                    <option value="1" <?php echo e(Request::get('status') == 1 ? "selected='selected'" : ""); ?>>Tiếp nhận</option>
                    <option value="2" <?php echo e(Request::get('status') == 2 ? "selected='selected'" : ""); ?>>Đang vận chuyển
                    </option>
                    <option value="3" <?php echo e(Request::get('status') == 3 ? "selected='selected'" : ""); ?>>Đã bàn giao
                    </option>
                    <option value="-1" <?php echo e(Request::get('status') == -1 ? "selected='selected'" : ""); ?>>Huỷ bỏ</option>
                </select>
            </div>
            <div class="form-group" style="margin-right: 10px;">
                <button type="submit" class="btn btn-blue btn-sm">Tìm kiếm</button>
            </div>
        </form>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Mã đơn</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Tổng tiền</th>
                        <th scope="col">Thời gian</th>
                        <th scope="col">Tình trạng</th>
                        <th scope="col" style="text-align: center">Export</th>
                        <th scope="col" style="text-align: center">Action</th>
                    </tr>
                </thead>
                <tbody>
                <?php $__currentLoopData = $transactions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $transaction): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td scope="row" style="text-align: center;position:relative;" data-tooltip='Click để xem chi tiết' class="css-tooltip" >
                            <a href="<?php echo e(route('get.user.order', $transaction->id)); ?>">DH<?php echo e($transaction->id); ?></a>
                        </td>
                        <td style="text-align: center"><?php echo e($transaction->tst_name); ?></td>
                        <td style="text-align: center"><?php echo e(number_format($transaction->tst_total_money,0,',','.')); ?> đ</td>
                        <td style="text-align: center"><?php echo e($transaction->created_at); ?></td>
                        <td style="text-align: center">
                            <span
                                class="label label-<?php echo e($transaction->getStatus($transaction->tst_status)['class']); ?>">
                                <?php echo e($transaction->getStatus($transaction->tst_status)['name']); ?>

                            </span>
                        </td>
                        <td style="text-align: center">
                            <a href="<?php echo e(route('ajax_get.user.invoice_transaction',$transaction->id)); ?>" target="_blank"
                               class="btn-xs label-success js-show-invoice_transaction" style="color: white"><i class="fa fa-save"></i> Export</a>
                        </td>
                        <td style="text-align: center">
                            <?php if(!in_array($transaction->tst_status , [-1,1,2,3]) ): ?>
                                <a href="<?php echo e(route('get.user.transaction.cancel',$transaction->id)); ?>" 
                                   class="btn-xs label-danger" style="color: white"><i class="fa fa-save"></i> Huỷ đơn</a>
                           <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>
        <div style="display: block;">
            <?php echo $transactions->appends($query ?? [])->links(); ?>

        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <div id="popup-transaction" class="modal text-center">
        
        <div class="content">

        </div>
        <div class="footer">
            <a href="#" rel="modal:close" class="btn btn-pink ">Đóng</a>
            <a href="" class="btn btn-purple js-export-pdf"> Export PDF</a>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/user/transaction.blade.php ENDPATH**/ ?>