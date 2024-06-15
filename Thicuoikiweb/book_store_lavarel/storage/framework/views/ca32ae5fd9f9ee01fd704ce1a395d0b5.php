<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.category.index')); ?>">Danh mục sản phẩm</a></li>
                        <li class="breadcrumb-item active">Cập nhật danh mục</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid ">
            <form role="form" action="<?php echo e(route('admin.category.excuteUpdate', ['id' => $category->id])); ?>" method="POST"
                enctype="multipart/form-data">
                <?php echo method_field('PUT'); ?>
                <?php echo csrf_field(); ?>
                <div class="row">
                    <div class="col-md-9">
                        <div class="card card-primary">
                            <div class="card-body">
                                <div class="form-group <?php echo e($errors->first('c_name') ? 'has-error' : ''); ?>">
                                    <label for="name">Name <span class="text-danger">(*)</span></label>
                                    <input type="text" class="form-control" value="<?php echo e($category->c_name); ?>"
                                        name="c_name" placeholder="Name ...">
                                    <?php if($errors->first('c_name')): ?>
                                        <span class="text-danger"><?php echo e($errors->first('c_name')); ?></span>
                                    <?php endif; ?>
                                </div>
                                <div class="form-group">
                                    <label for="name">Parent <span class="text-danger">(*)</span></label>
                                    <select name="c_parent_id" class="form-control" id="">
                                        <option value="0">__ROOT__</option>
                                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <option value="<?php echo e($item->id); ?>"
                                                <?php echo e($item->id == $category->c_parent_id ? "selected='selected'" : ''); ?>>
                                                <?php $str = '';
                                                for ($i = 0; $i < $item->level; $i++) {
                                                    echo $str;
                                                    $str .= '-- ';
                                                } ?>
                                                <?php echo e($item->c_name); ?>

                                            </option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label default">Mô tả</label>
                                    <div>
                                        <textarea name="c_description" cols="20" rows="8" style="resize:vertical; height: 218px;"
                                            class="form-control" placeholder="Mô tả ..."><?php echo e(old('c_description', isset($category) ? $category->c_description : '')); ?></textarea>
                                        <span class="text-danger">
                                            <p class="mg-t-5"></p>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title"> Xuất bản</h3>
                            </div>
                            <div class="card-body">
                                <div class="btn-set">
                                    <button type="submit" name="submit" class="btn btn-info">
                                        <i class="fa fa-save"></i> Lưu dữ liệu
                                    </button>
                                    <button type="reset" name="reset" value="reset" class="btn btn-danger">
                                        <i class="fa fa-undo"></i> Reset
                                    </button>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <div class="card-header">
                                <h3 class="card-title">Hình ảnh </h3>
                            </div>
                            <div class="card-body" style="min-height: 288px">
                                <div class="form-group">
                                    <div class="input-group input-file" name="c_avatar">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                        </span>
                                        <input type="text" class="form-control" placeholder='Không có tệp nào ...' />
                                        <span class="input-group-btn"></span>
                                    </div>
                                    <span class="text-danger ">
                                        <p class="mg-t-5"><?php echo e($errors->first('c_avatar')); ?></p>
                                    </span>
                                    <?php if(isset($category) && !empty($category->c_avatar)): ?>
                                        <img src="<?php echo e(asset(pare_url_file($category->c_avatar))); ?>" alt=""
                                            class="margin-auto-div img-rounded" id="image_render"
                                            style="height: 150px; width:100%;">
                                    <?php else: ?>
                                        <img src="<?php echo e(asset('admin/dist/img/no-image.png')); ?>" alt=""
                                            class="margin-auto-div img-rounded" id="image_render"
                                            style="height: 150px; width:100%;">
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </form>
        </div>
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/category/update.blade.php ENDPATH**/ ?>