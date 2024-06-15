<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.static.index')); ?>">Quản lý chính sách</a></li>
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
                                    <a href="<?php echo e(route('admin.static.create')); ?>"><button type="button" class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                  
                                    <th>Name</th>
                                    <th>Type</th>
                                    <th>Time</th>
                                    <th>Action</th>
                                </tr>
                                <?php if(isset($statics)): ?>
                                    <?php $__currentLoopData = $statics; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $static): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e(($key + 1)); ?></td>
                                          
                                            <td><?php echo e($static->s_title); ?></td>
                                            <td><?php echo e($static->getType($static->s_type)); ?></td>
                                            <td><?php echo e($static->created_at); ?></td>
                                            <td>
                                                <a href="<?php echo e(route('admin.static.update', $static->id)); ?>" class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i></a>
                                                <a href="<?php echo e(route('admin.static.delete', $static->id)); ?>" class="btn btn-sm btn-danger js-delete-confirm"><i class="fa fa-trash"></i></a>
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
                    
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/static/index.blade.php ENDPATH**/ ?>