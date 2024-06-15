<div class="container-fluid">
    <form role="form" action="" method="POST" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                    <div class="card-body">
                        <div class="form-group ">
                            <label for="exampleInputEmail1">Name</label>
                            <input type="text" class="form-control" name="a_name" placeholder="" autocomplete="off"
                                value="<?php echo e($article->a_name ?? old('a_name')); ?>">
                            <?php if($errors->first('a_name')): ?>
                                <span class="text-danger"><?php echo e($errors->first('a_name')); ?></span>
                            <?php endif; ?>
                        </div>
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="a_position_1"
                                            <?php echo e($article->a_position_1 ?? 0 == 1 ? 'checked' : ''); ?> value="1">
                                        Trung tâm
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" name="a_position_2"
                                            <?php echo e($article->a_position_2 ?? 0 == 1 ? 'checked' : ''); ?> value="1">
                                        Sidebar
                                    </label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group ">
                            <label class="control-label">Danh mục <b class="col-red">(*)</b></label>
                            <select name="a_menu_id" class="form-control ">
                                <option value="">__Click__</option>
                                <?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($menu->id); ?>"
                                        <?php echo e($article->a_menu_id ?? 0 == $menu->id ? "selected='selected'" : ''); ?>>
                                        <?php echo e($menu->mn_name); ?>

                                    </option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                            <?php if($errors->first('a_menu_id')): ?>
                                <span class="text-danger"><?php echo e($errors->first('a_menu_id')); ?></span>
                            <?php endif; ?>
                        </div>

                    </div>

                    <div class="card-body">
                        <div class="box-header with-border">
                            <h3 class="box-title">Nội dung</h3>
                        </div>

                        <div class="form-group ">
                            <label for="exampleInputEmail1">Content</label>
                            <textarea name="a_content" id="content" class="form-control textarea" cols="5" rows="2"><?php echo e($article->a_content ?? ''); ?></textarea>
                            <?php if($errors->first('a_content')): ?>
                                <span class="text-danger"><?php echo e($errors->first('a_content')); ?></span>
                            <?php endif; ?>
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
                            <button type="submit" class="btn btn-info">
                                <i class="fa fa-save"></i> Lưu dữ liệu
                            </button>
                            <button type="reset" value="reset" class="btn btn-danger">
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
                            <div class="input-group input-file" name="a_avatar">
                                <span class="input-group-btn">
                                    <button class="btn btn-default btn-choose" type="button">Chọn tệp</button>
                                </span>
                                <input type="text" class="form-control" placeholder='Không có tệp nào ...' />
                                <span class="input-group-btn"></span>
                            </div>
                            <span class="text-danger ">
                                <p class="mg-t-5"><?php echo e($errors->first('images')); ?></p>
                            </span>
                            <?php if(isset($article) && !empty($article->a_avatar)): ?>
                                <img src="<?php echo e(asset(pare_url_file($article->a_avatar))); ?>" alt=""
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
<script src="<?php echo e(asset('admin/bower_components/jquery/dist/jquery.min.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset('admin/ckeditor/ckeditor.js')); ?>"></script>
<script type="text/javascript">
    var options = {
        filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
        filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
        filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
        filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
    };

    CKEDITOR.replace('content', options);
</script>
<?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/admin/article/form.blade.php ENDPATH**/ ?>