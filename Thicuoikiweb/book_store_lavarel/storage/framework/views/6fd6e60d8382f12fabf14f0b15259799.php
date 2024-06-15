<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.slide.index')); ?>">Slide</a></li>
                        <li class="breadcrumb-item active">Cập nhật slide</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">

        <form role="form" action="<?php echo e(route('admin.slide.excuteUpdate', ['id' => $slide->id])); ?>" method="POST" enctype="multipart/form-data">
            <?php echo method_field('PUT'); ?>
            <?php echo csrf_field(); ?>
            <div class="row">
                <div class="col-md-9">
                    <div class="card card-primary">
                        <!-- form start -->
                        <div class="card-body">
                            <div class="form-group <?php echo e($errors->first('sd_title') ? 'has-error' : ''); ?>">
                                <label for="name">Title <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="<?php echo e($slide->sd_title); ?>" name="sd_title"
                                    placeholder="Name ...">
                                <?php if($errors->first('sd_title')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('sd_title')); ?></span>
                                <?php endif; ?>
                            </div>


                            <div class="form-group <?php echo e($errors->first('sd_link') ? 'has-error' : ''); ?>">
                                <label for="name">Link <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="sd_link" value="<?php echo e($slide->sd_link); ?>"
                                    placeholder="Link ...">
                                <?php if($errors->first('sd_link')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('sd_link')); ?></span>
                                <?php endif; ?>
                            </div>


                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="form-group ">
                                        <label for="name">Target </label>
                                        <select class="form-control" name="sd_target">
                                            <option value="1"
                                                <?php echo e($slide->sd_target == 1 ? "selected='selected'" : ''); ?>>_blank</option>
                                            <option value="2"
                                                <?php echo e($slide->sd_target == 2 ? "selected='selected'" : ''); ?>>_self</option>
                                            <option value="3"
                                                <?php echo e($slide->sd_target == 3 ? "selected='selected'" : ''); ?>>_parent</option>
                                            <option value="4"
                                                <?php echo e($slide->sd_target == 4 ? "selected='selected'" : ''); ?>>_top</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="form-group ">
                                        <label for="name">Sort </label>
                                        <input type="text" class="form-control" name="sd_sort"
                                            value="<?php echo e($slide->sd_sort); ?>" placeholder="0">
                                        <?php if($errors->first('sd_sort')): ?>
                                            <span class="text-danger"><?php echo e($errors->first('sd_sort')); ?></span>
                                        <?php endif; ?>
                                    </div>
                                    
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
                                <div class="input-group input-file" name="sd_avatar">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                    </span>
                                    <input type="text" class="form-control" placeholder='Không có tệp nào ...' />
                                    <span class="input-group-btn"></span>
                                </div>
                                <span class="text-danger ">
                                    <p class="mg-t-5"><?php echo e($errors->first('sd_avatar')); ?></p>
                                </span>
                                <?php if(isset($slide) && !empty($slide->sd_image)): ?>
                                    <img src="<?php echo e(asset(pare_url_file($slide->sd_image))); ?>" alt=""
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
        </form>
        </div>
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/admin/slide/update.blade.php ENDPATH**/ ?>