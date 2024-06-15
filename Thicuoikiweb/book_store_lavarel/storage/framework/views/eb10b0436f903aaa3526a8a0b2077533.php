<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.attribute.index')); ?>">Quản lý thông tin</a></li>
                        <li class="breadcrumb-item active">Cập nhật</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form role="form" action="<?php echo e(route('admin.attribute.excuteUpdate', ['id' => $attribute->id])); ?>" method="POST">
                <?php echo method_field('PUT'); ?>
                <?php echo csrf_field(); ?>
                <div class="row">
                    <div class="col-md-9">
                        <div class="card card-primary">
                            <div class="card-body">
                                <div class="form-group <?php echo e($errors->first('atb_name') ? 'has-error' : ''); ?>">
                                    <label for="name">Tên thông tin <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" value="<?php echo e($attribute->atb_name); ?>"
                                        name="atb_name" placeholder="Name ...">
                                    <?php if($errors->first('atb_name')): ?>
                                        <span class="text-danger"><?php echo e($errors->first('atb_name')); ?></span>
                                    <?php endif; ?>
                                </div>

                                <div class="form-group <?php echo e($errors->first('atb_type') ? 'has-error' : ''); ?>">
                                    <label for="name">Nhóm thông tin <span class="text-danger">(*)</span></label>
                                    <select class="form-control" name="atb_type">
                                        <?php $__currentLoopData = $attribute_type; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $type): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($key); ?>"
                                                <?php echo e($attribute->atb_type == $key ? "selected='selected'" : ''); ?>>
                                                <?php echo e($type['name']); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                    <?php if($errors->first('atb_type')): ?>
                                        <span class="text-danger"><?php echo e($errors->first('atb_type')); ?></span>
                                    <?php endif; ?>
                                </div>


                                <div class="form-group  <?php echo e($errors->first('atb_category_id') ? 'has-error' : ''); ?>">
                                    <label for="name">Danh mục <span class="text-danger">(*)</span></label>
                                    <select class="form-control" name="atb_category_id">
                                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($item->id); ?>"
                                                <?php echo e($attribute->atb_category_id == $item->id ? "selected='selected'" : ''); ?>>
                                                <?php echo e($item->c_name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                    <?php if($errors->first('atb_category_id')): ?>
                                        <span class="text-danger"><?php echo e($errors->first('atb_category_id')); ?></span>
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Thao tác</h3>
                            </div>
                            <div class="card-header">
                                <button type="submit" class="btn btn-success"><i
                                        class="fa fa-save"></i> Cập nhật</button>
                                <button type="reset" value="reset" class="btn btn-danger">
                                    <i class="fa fa-undo"></i> Reset
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </form>
        </div>

    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/attribute/update.blade.php ENDPATH**/ ?>