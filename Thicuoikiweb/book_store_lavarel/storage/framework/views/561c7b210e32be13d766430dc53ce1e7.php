<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.slide.index')); ?>">Quản lý slide</a></li>
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
                                    <a href="<?php echo e(route('admin.slide.create')); ?>"><button type="button"
                                            class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
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
                                        <th>Status</th>
                                        <th>Sort</th>
                                        <th>Target</th>
                                        <th>Time</th>
                                        <th>Hành động</th>
                                    </tr>
                                    <?php if(isset($slides)): ?>
                                        <?php $__currentLoopData = $slides; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $slide): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td><?php echo e($key + 1); ?></td>

                                                <td><?php echo e($slide->sd_title); ?></td>
                                                <td>
                                                    <?php if($slide->sd_active == 1): ?>
                                                        <a href="<?php echo e(route('admin.slide.active', $slide->id)); ?>"
                                                            class="btn-sm btn-info">Show</a>
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('admin.slide.active', $slide->id)); ?>"
                                                            class="btn-sm btn-default">Hide</a>
                                                    <?php endif; ?>
                                                </td>
                                                <td><?php echo e($slide->sd_sort); ?></td>
                                                <td><?php echo e($slide->sd_target); ?></td>
                                                <td><?php echo e($slide->created_at); ?></td>
                                                <td>
                                                    <form action="<?php echo e(route('admin.slide.delete', $slide->id)); ?>"
                                                        method="post">
                                                        <?php echo csrf_field(); ?>
                                                        <?php echo method_field('DELETE'); ?>
                                                        <a href="<?php echo e(route('admin.slide.update', $slide->id)); ?>"
                                                            class="btn btn-primary btn-sm"><i
                                                                class="fas fa-pencil-alt"></i></i></a>
                                                        <button class="btn btn-danger btn-sm btn-delete"
                                                            onclick="return confirm('Bạn có chăc chắn muốn xóa dữ liệu ?')"><i
                                                                class="fa fa-trash"></i></button>
                                                    </form>
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

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/slide/index.blade.php ENDPATH**/ ?>