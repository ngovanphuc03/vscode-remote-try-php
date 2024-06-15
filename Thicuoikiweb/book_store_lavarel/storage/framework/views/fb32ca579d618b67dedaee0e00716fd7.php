<table class="table">
	<tbody>
	<tr>
		<th style="width: 100px">Mã HĐ</th>
		<th>Trạng thái</th>
		<th>Ngày tạo</th>
		<th>Số tiền</th>
		<th>Dư nợ khách hàng</th>
		<th>Thao tác</th>
	</tr>
	<?php if(isset($transactions)): ?>
		<?php $__currentLoopData = $transactions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $transaction): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<tr>
				<td>DH<?php echo e($transaction->id); ?></td>
				<td>
					<span class="label label-<?php echo e($transaction->getStatus($transaction->tst_status)['class']); ?>">
						<?php echo e($transaction->getStatus($transaction->tst_status)['name']); ?>

					</span>
				</td>
				<td><?php echo e($transaction->created_at); ?></td>
				<td><?php echo e(number_format($transaction->tst_total_money,0,',','.')); ?> đ</td>
				<td><?php echo e(number_format($transaction->tst_total_money,0,',','.')); ?> đ</td>
				<td>
					<a href="<?php echo e(route('admin.action.transaction',['success', $transaction->id])); ?>" class="btn btn-success btn-xs js-success-transaction"><i class="fa fa-calculator"></i> Thanh toán</a>
				</td>
			</tr>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	<?php endif; ?>
	</tbody>
</table><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/user/transaction.blade.php ENDPATH**/ ?>