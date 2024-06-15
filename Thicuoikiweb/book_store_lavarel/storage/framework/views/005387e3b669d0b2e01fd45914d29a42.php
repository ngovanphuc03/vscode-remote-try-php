<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.discount.code.index')); ?>">Giảm giá</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-tools">
                                <div class="btn-group">
                                    <a href="<?php echo e(route('admin.discount.code.create')); ?>"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">#</th>
                                    <th>Mã code</th>
                                    <th>Số lượt sử dụng</th>
                                    <th>Ngày bắt đầu</th>
                                    <th>Ngày kết thúc</th>
                                    <th>Phần trăm giảm giá</th>
                                    <th>Hành động</th>
                                </tr>
                                <?php if($discountCodes): ?>
                                    <?php $__currentLoopData = $discountCodes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $discount): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($discount->id); ?></td>
                                            <td><?php echo e($discount->d_code); ?></td>
                                            <td><?php echo e($discount->d_number_code); ?></td>
                                            <td><?php echo e($discount->d_date_start); ?></td>
                                            <td><?php echo e($discount->d_date_end); ?></td>
                                            <td><?php echo e($discount->d_percentage); ?> %</td>
                                            <td class="text-center">
                                                <a href="<?php echo e(route('admin.discount.code.update', $discount->id)); ?>" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i></a>
                                                <a href="<?php echo e(route('admin.discount.code.delete', $discount->id)); ?>" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <?php echo $discountCodes->links(); ?>

                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/discount_code/index.blade.php ENDPATH**/ ?>