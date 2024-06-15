<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a></li>
                        <li class="breadcrumb-item"><a href="#">Liên hệ</a></li>
                    
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
                       
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th>ID</th>
                                    <th>Họ tên</th>
                                    <th>Tiêu đề</th>
                                    <th>Email</th>
                                    <th>SĐT</th>
                                    <th>Nội dung</th>
                                    <th>Ngày gửi</th>
                                </tr>
                                <?php if(isset($contacts)): ?>
                                    <?php $__currentLoopData = $contacts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e((($contacts->currentPage() - 1) * $contacts->perPage()) + ( $key + 1)); ?></td>
                                            <td><?php echo e($item->id); ?></td>
                                            <td><?php echo e($item->c_name); ?></td>
                                            <td><?php echo e($item->c_title); ?></td>
                                            <td><?php echo e($item->c_email); ?></td>
                                            <td><?php echo e($item->c_phone); ?></td>
                                            <td><?php echo e($item->c_content); ?></td>
                                            <td><?php echo e($item->created_at); ?></td>
                                            <td>
                                                <a href="<?php echo e(route('admin.contact.delete', $item->id)); ?>" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
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
                    <?php echo $contacts->links(); ?>

                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/admin/contact/index.blade.php ENDPATH**/ ?>