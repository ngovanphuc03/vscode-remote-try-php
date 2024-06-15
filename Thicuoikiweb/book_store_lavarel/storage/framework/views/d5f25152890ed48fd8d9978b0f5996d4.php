<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.category.index')); ?>">Nhóm sản phẩm</a></li>
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
                                    <a href="<?php echo e(route('admin.category.create')); ?>"><button type="button"
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
                                        <th>Tên danh mục</th>
                                        <th>Hình ảnh</th>
                                        <th>Trạng thái</th>
                                        <th>Nổi bật</th>
                                        <th>Time</th>
                                        <th>Hành động</th>
                                    </tr>
                                    <?php if($categories): ?>
                                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td><?php echo e(($categories->currentPage() - 1) * $categories->perPage() + ($key + 1)); ?>

                                                </td>
                                                <td><?php echo e($category->c_name); ?></td>
                                                <td>
                                                    <?php if(isset($category) && !empty($category->c_avatar)): ?>
                                                        <img src="<?php echo e(asset(pare_url_file($category->c_avatar))); ?>"
                                                            alt="" class="margin-auto-div img-rounded"
                                                            id="image_render" style="height: 80px; width:80%;">
                                                    <?php else: ?>
                                                        <img src="<?php echo e(asset('admin/dist/img/no-image.png')); ?>" alt=""
                                                            class="margin-auto-div img-rounded" id="image_render"
                                                            style="height: 80px; width:80%;">
                                                    <?php endif; ?>
                                                </td>
                                                <td>
                                                    <?php if($category->c_status == 1): ?>
                                                        <a href="<?php echo e(route('admin.category.active', $category->id)); ?>"
                                                            class="btn-sm btn-success">Hiển thị</a>
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('admin.category.active', $category->id)); ?>"
                                                            class="btn-sm btn-warning">Ẩn</a>
                                                    <?php endif; ?>
                                                </td>
                                                <td>
                                                    <?php if($category->c_hot == 1): ?>
                                                        <a href="<?php echo e(route('admin.category.hot', $category->id)); ?>"
                                                            class="btn-sm btn-info">Yes</a>
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('admin.category.hot', $category->id)); ?>"
                                                            class="btn-sm btn-secondary">No</a>
                                                    <?php endif; ?>
                                                </td>
                                                <td><?php echo e($category->created_at); ?></td>
                                                <td class="text-center">
                                                    <form action="<?php echo e(route('admin.category.delete', $category->id)); ?>"
                                                        method="post">
                                                        <?php echo csrf_field(); ?>
                                                        <?php echo method_field('DELETE'); ?>
                                                        <a href="<?php echo e(route('admin.category.update', $category->id)); ?>"
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
                        <?php echo $categories->links(); ?>

                    </div>
                    <!-- /.box-footer-->
                </div>
                <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/category/index.blade.php ENDPATH**/ ?>