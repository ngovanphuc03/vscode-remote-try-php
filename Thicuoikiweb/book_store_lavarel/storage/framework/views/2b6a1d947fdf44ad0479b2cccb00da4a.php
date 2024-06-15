<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.static.index')); ?>">Chính sách</a></li>
                        <li class="breadcrumb-item active">Cập nhật chính sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
      
                    <form role="form" action="" method="POST" enctype="multipart/form-data">
                         <?php echo csrf_field(); ?>
                         <div class="row">
                            <div class="col-md-9">
                                <div class="card card-primary">
                                    <div class="card-body">
                            <div class="form-group <?php echo e($errors->first('s_title') ? 'has-error' : ''); ?>">
                                <label for="name">Đầu đề <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="s_title"  placeholder="" value="<?php echo e($static->s_title); ?>">
                                <?php if($errors->first('s_title')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('s_title')); ?></span>
                                <?php endif; ?>
                            </div>
                      
                      
                            <div class="form-group <?php echo e($errors->first('e_link') ? 'has-error' : ''); ?>">
                                <label for="name">Loại chính sách <span class="text-danger">(*)</span></label>
                                <select class="form-control" name="s_type">
                                    <?php $__currentLoopData = $type; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($key); ?>" <?php echo e($static->s_type == $key ? "selected='selected'" : ""); ?>><?php echo e($item); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                    
                      
                            <div class="form-group <?php echo e($errors->first('e_link') ? 'has-error' : ''); ?>">
                                <label for="name">Nội dung <span class="text-danger">(*)</span></label>
                                <textarea class="form-control textarea" id="content" name="s_content"><?php echo $static->s_content; ?></textarea>
                            </div>
                       
                       
                       
                       
                            <div class="box-footer text-center">
                                <a href="<?php echo e(route('admin.static.index')); ?>" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
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
<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('admin/bower_components/jquery/dist/jquery.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('admin/ckeditor/ckeditor.js')); ?>"></script>
    <script type="text/javascript">

        var options = {
            filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
            filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
            filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
            filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
       };

        CKEDITOR.replace( 'content' ,options);
    </script>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/static/update.blade.php ENDPATH**/ ?>