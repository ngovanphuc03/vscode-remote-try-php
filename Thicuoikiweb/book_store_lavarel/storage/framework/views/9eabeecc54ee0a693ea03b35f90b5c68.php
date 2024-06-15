<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.product.index')); ?>">Sản phẩm</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <section class="content">
            <div class="container-fluid">
                <div class="card card-default">
                    <div class="card-header card-header-border-bottom">
                        <h3 class="card-title">Tìm kiếm</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                    class="fas fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="card-body">
                        <form class="">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="<?php echo e(Request::get('id')); ?>"
                                            name="id" placeholder="ID">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" class="form-control" value="<?php echo e(Request::get('name')); ?>"
                                            name="name" placeholder="Tên ...">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <select name="category" class="form-control">
                                            <option value="0">Danh mục</option>
                                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($item->id); ?>"
                                                    <?php echo e(Request::get('category') == $item->id ? "selected='selected'" : ''); ?>>
                                                    <?php echo e($item->c_name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-3">
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success"><i class="fa fa-search"></i>
                                            Tìm</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-tools">
                                    <div class="btn-group">
                                        <a href="<?php echo e(route('admin.product.create')); ?>"><button type="button"
                                                class="btn btn-block btn-info"><i class="fa fa-plus"></i> Tạo
                                                mới</button></a>
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap table-bordered">
                                    <thead>
                                        <tr>
                                            <th style="width: 10px">STT</th>
                                            <th>Tên</th>
                                            <th>Danh mục</th>
                                            <th>Hình đại diện</th>
                                            <th>Giá</th>
                                            <th>Hot</th>
                                            <th>Trạng thái</th>
                                            <th>Hành động</th>
                                        </tr>

                                        </tbody>
                                        <?php if(isset($products)): ?>
                                            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <td><?php echo e(($products->currentPage() - 1) * $products->perPage() + ($key + 1)); ?>

                                                    </td>
                                                    <td style="width: 30%" class="title-content">
                                                        <p><?php echo e($product->pro_name); ?></p>
                                                    </td>
                                                    <td>
                                                        <span
                                                            class="label label-success"><?php echo e($product->category->c_name ?? '[N\A]'); ?></span>
                                                    </td>
                                                    <td>
                                                        <img src="<?php echo e(pare_url_file($product->pro_avatar)); ?>"
                                                            style="width: 80px;height: 100px">
                                                    </td>
                                                    <td>
                                                        <?php if($product->pro_sale): ?>
                                                            <span
                                                                style="text-decoration: line-through;"><?php echo e(number_format($product->pro_price, 0, ',', '.')); ?>

                                                                vnđ</span><br>
                                                            <?php
                                                                $price =
                                                                    ((100 - $product->pro_sale) * $product->pro_price) /
                                                                    100;
                                                            ?>
                                                            <span><?php echo e(number_format($price, 0, ',', '.')); ?> vnđ</span>
                                                        <?php else: ?>
                                                            <?php echo e(number_format($product->pro_price, 0, ',', '.')); ?> vnđ
                                                        <?php endif; ?>

                                                    </td>
                                                    <td>
                                                        <?php if($product->pro_hot == 1): ?>
                                                            <a href="<?php echo e(route('admin.product.hot', $product->id)); ?>"
                                                                class="btn btn-success btn-xs">Nổi bật</a>
                                                        <?php else: ?>
                                                            <a href="<?php echo e(route('admin.product.hot', $product->id)); ?>"
                                                                class="btn btn-danger btn-xs">Không</a>
                                                        <?php endif; ?>
                                                    </td>
                                                    <td>
                                                        <?php if($product->pro_active == 1): ?>
                                                            <a href="<?php echo e(route('admin.product.active', $product->id)); ?>"
                                                                class="btn btn-info btn-xs">Hiển thị</a>
                                                        <?php else: ?>
                                                            <a href="<?php echo e(route('admin.product.active', $product->id)); ?>"
                                                                class="btn btn-danger btn-xs">Ẩn</a>
                                                        <?php endif; ?>
                                                    </td>
                                                    <td class="text-center">
                                                        <form action="<?php echo e(route('admin.product.delete', $product->id)); ?>"
                                                            method="post">
                                                            <?php echo csrf_field(); ?>
                                                            <?php echo method_field('DELETE'); ?>
                                                            <a href="<?php echo e(route('admin.product.update', $product->id)); ?>"
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
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <?php echo $products->appends($query)->links(); ?>

                        </div>
                        <!-- /.box-footer-->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </section>
        <!-- /.content -->
    <?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/product/index.blade.php ENDPATH**/ ?>