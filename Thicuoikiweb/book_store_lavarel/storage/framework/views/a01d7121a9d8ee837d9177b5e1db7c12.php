<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.menu.index')); ?>">Menu</a></li>
                        <li class="breadcrumb-item active">Cập nhật menu</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="<?php echo e(route('admin.menu.excuteUpdate', ['id' => $menu->id])); ?>"
                        method="POST">
                        <?php echo method_field('PUT'); ?>
                        <?php echo csrf_field(); ?>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="card card-primary">
                                    <div class="card-body">
                                        <div class="form-group <?php echo e($errors->first('mn_name') ? 'has-error' : ''); ?>">
                                            <label for="name">Name <span class="text-danger">(*)</span></label>
                                            <input type="text" class="form-control" value="<?php echo e($menu->mn_name); ?>"
                                                name="mn_name" placeholder="Name ...">
                                            <?php if($errors->first('mn_name')): ?>
                                                <span class="text-danger"><?php echo e($errors->first('mn_name')); ?></span>
                                            <?php endif; ?>
                                        </div>

                                        <div class="col-sm-4">

                                        </div>
                                        <div class="box-footer text-center">
                                            <a href="<?php echo e(route('admin.menu.index')); ?>" class="btn btn-danger">
                                                Quay lại <i class="fa fa-undo"></i></a>
                                            <button type="submit" class="btn btn-success">Cập nhật <i
                                                    class="fa fa-save"></i></button>
                                        </div>

                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/admin/menu/update.blade.php ENDPATH**/ ?>