<?php $__env->startSection('content'); ?>
    <style type="text/css">
        .ratings span i {
            color: #eff0f5;
        }

        .ratings span.active i {
            color: #faca51;
        }
    </style>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="<?php echo e(route('admin.comment.index')); ?>">Bình Luận</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
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
                    <form>
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-group">
                                    <input type="text" class="form-control" value="<?php echo e(Request::get('key', '')); ?>"
                                        name="key" placeholder="Từ khóa tìm kiếm">
                                </div>
                            </div>

                            <div class="col-md-2">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-danger"><i class="fa fa-search"></i>
                                        Search</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>

                                    <th style="width: 10px">STT</th>
                                    <th>Tên khách hàng</th>
                                    <th>Sản phẩm</th>
                                    <th>Bình luận </th>
                                    <th>Thời gian</th>
                                    <th>Hành động</th>
                                </tr>
                                <?php
                                    $key_search = str()->slug(Request::get('key', ''));
                                ?>
                                <?php if(isset($comments)): ?>
                                    <?php $__currentLoopData = $comments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $comment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if(
                                            $key_search &&
                                                (str_contains(str()->slug($comment->user->name), $key_search) ||
                                                    str_contains(str()->slug($comment->product->pro_name), $key_search))): ?>
                                            <tr>
                                                <td><?php echo e(($comments->currentPage() - 1) * $comments->perPage() + ($key + 1)); ?>

                                                </td>
                                                <td><?php echo e($comment->user->name ?? '[N\A]'); ?></td>
                                                <td><?php echo e($comment->product->pro_name ?? '[N\A]'); ?></td>
                                                <td><?php echo e($comment->cmt_content ?? '[N\A]'); ?></td>
                                                <td><?php echo e($comment->created_at); ?></td>
                                                <td>
                                                    <a href="<?php echo e(route('admin.comment.delete', $comment->id)); ?>"
                                                        class="btn btn-sm btn-danger js-delete-confirm"><i
                                                            class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        <?php elseif($key_search): ?>
                                        <?php else: ?>
                                            <tr>
                                                <td><?php echo e(($comments->currentPage() - 1) * $comments->perPage() + ($key + 1)); ?>

                                                </td>
                                                <td><?php echo e($comment->user->name ?? '[N\A]'); ?></td>
                                                <td><?php echo e($comment->product->pro_name ?? '[N\A]'); ?></td>
                                                <td><?php echo e($comment->cmt_content ?? '[N\A]'); ?></td>
                                                <td><?php echo e($comment->created_at); ?></td>
                                                <td>
                                                    <a href="<?php echo e(route('admin.comment.delete', $comment->id)); ?>"
                                                        class="btn btn-sm btn-danger js-delete-confirm"><i
                                                            class="fa fa-trash"></i></a>
                                                </td>
                                            </tr>
                                        <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>
                                </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <?php echo $comments->links(); ?>

        </div>
        <!-- /.box-footer-->
    </div>
    <!-- /.box -->
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/comment/index.blade.php ENDPATH**/ ?>