<div class="container-fluid">
    <form role="form" action="" method="POST" enctype="multipart/form-data">
        <?php echo csrf_field(); ?>
        <div class="row">
            <div class="col-md-9">
                <div class="card card-primary">
                    <div class="card-body">
                        <div class="form-group <?php echo e($errors->first('d_code') ? 'has-error' : ''); ?>">
                            <label for="name">Mã code <span class="text-danger">(*)</span></label>
                            <input type="text" class="form-control" name="d_code" placeholder="Code ..."
                                value="<?php echo e(old('d_code', isset($discount) ? $discount->d_code : '')); ?>">
                            <?php if($errors->first('d_code')): ?>
                                <span class="text-danger"><?php echo e($errors->first('d_code')); ?></span>
                            <?php endif; ?>
                        </div>


                        <div class="form-group <?php echo e($errors->first('d_number_code') ? 'has-error' : ''); ?>">
                            <label for="name">Số lượt sử dụng <span class="text-danger">(*)</span></label>
                            <input type="number" class="form-control" name="d_number_code"
                                placeholder="Số lượt sử dụng..."
                                value="<?php echo e(old('d_number_code', isset($discount) ? $discount->d_number_code : '')); ?>">
                            <?php if($errors->first('d_number_code')): ?>
                                <span class="text-danger"><?php echo e($errors->first('d_number_code')); ?></span>
                            <?php endif; ?>
                        </div>


                        <div class="form-group <?php echo e($errors->first('d_percentage') ? 'has-error' : ''); ?>">
                            <label for="name">Phần trăm giảm giá <span class="text-danger">(*)</span></label>
                            <input type="number" class="form-control" name="d_percentage"
                                placeholder="Phần trăm giảm giá..."
                                value="<?php echo e(old('d_number_code', isset($discount) ? $discount->d_percentage : '')); ?>">
                            <?php if($errors->first('d_percentage')): ?>
                                <span class="text-danger"><?php echo e($errors->first('d_percentage')); ?></span>
                            <?php endif; ?>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                            <div class="form-group <?php echo e($errors->first('d_date_start') ? 'has-error' : ''); ?>">
                                <label for="name">Ngày bắt đầu</label>
                                <input type="datetime-local" class="form-control" name="d_date_start"
                                    value="<?php echo e(old('d_date_start', isset($discount) ? date('Y-m-d\TH:i', strtotime($discount->d_date_start)) : '')); ?>">
                                <?php if($errors->first('d_date_start')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('d_date_start')); ?></span>
                                <?php endif; ?>
                            </div>
                            </div>

                            <div class="col-md-6">
                            <div class="form-group <?php echo e($errors->first('d_date_end') ? 'has-error' : ''); ?>">
                                <label for="name">Ngày kết thúc </label>
                                <input type="datetime-local" class="form-control" name="d_date_end"
                                    value="<?php echo e(old('d_date_end', isset($discount) ? date('Y-m-d\TH:i', strtotime($discount->d_date_end)) : '')); ?>">
                                <?php if($errors->first('d_date_end')): ?>
                                    <span class="text-danger"><?php echo e($errors->first('d_date_end')); ?></span>
                                <?php endif; ?>
                            </div>
                            </div>

                        </div>

                        <div class="card">
                        
                            <div class="card-header text-center">
                                <a href="<?php echo e(route('admin.discount.code.index')); ?>" class="btn btn-danger">
                                    Quay lại <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success" name="submit"
                                    value="<?php echo e(isset($discount) ? 'update' : 'create'); ?>">Lưu dữ liệu <i
                                        class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
              
            </div>
        </div>
    </form>
<?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/admin/discount_code/form.blade.php ENDPATH**/ ?>