<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-left">
                        <li class="breadcrumb-item"><a href="#"> <i class="nav-icon fas fa fa-home"></i> Trang chủ</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Xuất Kho</a></li>
                        <li class="breadcrumb-item active">Danh sách</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
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
            <div class="container-fluid">
                <div class="row">

                    <?php $sum = 0 ; ?>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body table-responsive p-0">
                                <table class="table table-hover text-nowrap table-bordered">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Sản phẩm</th>
                                            <th>Số lượng</th>
                                            <th>Tổng tiền</th>
                                            <th>Ngày mua</th>
                                        </tr>
                                    </thead>

                                    </tbody>
                                    <?php
                                        $key_search = Str::slug(Request::get('key', ''));
                                    ?>
                                    <?php if(isset($inventoryExport)): ?>
                                        <?php if($key_search): ?>
                                            <?php $__currentLoopData = $inventoryExport; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if(str_contains(Str::slug($item->product->pro_name), $key_search)): ?>
                                                    <tr>
                                                        <td><?php echo e($item->od_product_id); ?></td>
                                                        <td><a href=""><?php echo e($item->product->pro_name ?? '[N\A]'); ?></a>
                                                        </td>
                                                        <td><?php echo e($item->od_qty); ?></td>
                                                        <td><?php echo e(number_format($item->od_price, 0, ',', '.')); ?> VNĐ</td>
                                                        <td><?php echo e($item->created_at); ?></td>
                                                    </tr>
                                                    <?php
                                                        $sum += $item->od_price;
                                                    ?>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php else: ?>
                                            <?php $__currentLoopData = $inventoryExport; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr>
                                                    <td><?php echo e($item->od_product_id); ?></td>
                                                    <td><a href=""><?php echo e($item->product->pro_name ?? '[N\A]'); ?></a></td>
                                                    <td><?php echo e($item->od_qty); ?></td>
                                                    <td><?php echo e(number_format($item->od_price, 0, ',', '.')); ?> VNĐ</td>
                                                    <td><?php echo e($item->created_at); ?></td>
                                                </tr>
                                                <?php
                                                    $sum += $item->od_price;
                                                ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                    <?php endif; ?>
                                </table>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <p> Tổng tiền <b><?php echo e(number_format($sum, 0, ',', '.')); ?> VNĐ</b></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box -->
                <div class="box-footer">
                    <?php echo $inventoryExport->appends($query ?? [])->links(); ?>

                </div>
            </div>
    </section>
    <!-- /.content -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script type="text/javascript" src="<?php echo e(asset('admin/bower_components/daterangepicker/moment.min.js')); ?>"></script>
    <script type="text/javascript" src="<?php echo e(asset('admin/bower_components/daterangepicker/daterangepicker.js')); ?>"></script>
    <link rel="stylesheet" type="text/css"
        href="<?php echo e(asset('admin/bower_components/daterangepicker/daterangepicker.css')); ?>" />
    <script type="text/javascript">
        $(function() {
            $('input[name="time"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                    cancelLabel: 'Clear'
                },
                ranges: {
                    'Hôm nay': [moment(), moment()],
                    'Hôm qua': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    '7 ngày trước': [moment().subtract(6, 'days'), moment()],
                    '30 ngày trước': [moment().subtract(29, 'days'), moment()],
                    'Tháng này': [moment().startOf('month'), moment().endOf('month')],
                    'Tháng trước': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1,
                        'month').endOf('month')]
                }
            });

            $('input[name="time"]').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format(
                    'MM/DD/YYYY'));
            });

            $('input[name="time"]').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
        })
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/inventory/export.blade.php ENDPATH**/ ?>