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
                                    <a href="<?php echo e(route('admin.menu.create')); ?>"><button type="button"
                                            class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo mới</button></a>
                                </div>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover text-nowrap table-bordered">
                                <thead>
                                    <tr>
                                        <th style="width: 10px">Stt</th>

                                        <th>Tên</th>
                                        <th>Ảnh đại diện</th>
                                        <th>Status</th>
                                        <th>Hot</th>
                                        <th>Time</th>
                                        <th>Hành động</th>
                                    </tr>
                                    <?php if($menus): ?>
                                        <?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td><?php echo e($key + 1); ?></td>

                                                <td><?php echo e($menu->mn_name); ?></td>
                                                <td>
                                                    <?php if(isset($menu) && !empty($menu->mn_avatar)): ?>
                                                        <img src="<?php echo e(asset(pare_url_file($menu->mn_avatar))); ?>"
                                                            alt="" class="margin-auto-div img-rounded"
                                                            id="image_render" style="height: 80px; width:80%;">
                                                    <?php else: ?>
                                                        <img src="<?php echo e(asset('admin/dist/img/no-image.png')); ?>" alt=""
                                                            class="margin-auto-div img-rounded" id="image_render"
                                                            style="height: 80px; width:80%;">
                                                    <?php endif; ?>
                                                </td>
                                                <td>
                                                    <?php if($menu->mn_status == 1): ?>
                                                        <a href="<?php echo e(route('admin.menu.active', $menu->id)); ?>"
                                                            class="btn-sm btn-info">Show</a>
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('admin.menu.active', $menu->id)); ?>"
                                                            class="btn-sm btn-default">Hide</a>
                                                    <?php endif; ?>
                                                </td>
                                                <td>
                                                    <?php if($menu->mn_hot == 1): ?>
                                                        <a href="<?php echo e(route('admin.menu.hot', $menu->id)); ?>"
                                                            class="btn-sm btn-info">Hot</a>
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('admin.menu.hot', $menu->id)); ?>"
                                                            class="btn-sm btn-default">None</a>
                                                    <?php endif; ?>
                                                </td>
                                                <td><?php echo e($menu->created_at); ?></td>
                                                <td class="text-center">
                                                    <form action="<?php echo e(route('admin.menu.delete', $menu->id)); ?>"
                                                        method="post">
                                                        <?php echo csrf_field(); ?>
                                                        <?php echo method_field('DELETE'); ?>
                                                        <a href="<?php echo e(route('admin.menu.update', $menu->id)); ?>"
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
                </div>
                <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/menu/index.blade.php ENDPATH**/ ?>