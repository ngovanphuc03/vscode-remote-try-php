<?php $__env->startSection('content'); ?>
<style>
   
</style>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-left">
                            <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang
                                    chủ</a></li>
                            <li class="breadcrumb-item"><a href="<?php echo e(route('admin.article.index')); ?>">Bài viết</a></li>
                            <li class="breadcrumb-item active">Danh sách</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
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
                                    <a href="<?php echo e(route('admin.article.create')); ?>"><button type="button"
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
                                        <th>Tên bài viết</th>
                                        <th>Danh mục</th>
                                        <th>Hình ảnh</th>
                                        <th>Nổi bật</th>
                                        <th>Trạng thái</th>
                                        <th>Hành động</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if(isset($articles)): ?>
                                        <?php $__currentLoopData = $articles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $article): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr>
                                                <td><?php echo e(($articles->currentPage() - 1) * $articles->perPage() + ($key + 1)); ?>

                                                </td>

                                                <td style="width: 20%" class="title-content"><p><?php echo e($article->a_name); ?></p></td>
                                                <td>
                                                    <span
                                                        class="label label-success"><?php echo e($article->menu->mn_name ?? '[N\A]'); ?></span>
                                                </td>
                                                <td>
                                                    <img src="<?php echo e(pare_url_file($article->a_avatar)); ?>"
                                                        style="width: 80px;height: 80px">
                                                </td>

                                                <td>
                                                    <?php if($article->a_hot == 1): ?>
                                                        <a href="<?php echo e(route('admin.article.hot', $article->id)); ?>"
                                                            class="btn-xs btn-info">Nổi bật</a>
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('admin.article.hot', $article->id)); ?>"
                                                            class="btn-xs btn-danger">Không</a>
                                                    <?php endif; ?>
                                                </td>
                                                <td class="text-center">
                                                    <?php if($article->a_active == 1): ?>
                                                        <a href="<?php echo e(route('admin.article.active', $article->id)); ?>"
                                                            class="btn-xs btn-info">Hiển thị</a>
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('admin.article.active', $article->id)); ?>"
                                                            class="btn-xs btn-secondary">Ẩn</a>
                                                    <?php endif; ?>
                                                </td>

                                                <td class="text-center">
                                                    <a href="<?php echo e(route('admin.article.update', $article->id)); ?>"
                                                        class="btn btn-sm btn-primary"><i class="fas fa-pencil-alt"></i></a>
                                                    <a href="<?php echo e(route('admin.article.delete', $article->id)); ?>"
                                                        class="btn btn-sm btn-danger js-delete-confirm"><i
                                                            class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </tbody>
                            </table>

                            <div class="pagination float-right margin-20">
                                <?php echo $articles->links(); ?>

                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/article/index.blade.php ENDPATH**/ ?>