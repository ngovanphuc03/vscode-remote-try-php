<?php $__env->startSection('content'); ?>
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý thống kê</h1>
        <ol class="breadcrumb">

        </ol>
    </section>
    <section class="content">
        <div class="container-fluid">
            <div class="card card-default">
                <div class="card-header">
                    <h3 class="card-title"></h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-success"><i class="fas fa-shopping-cart"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Tổng số đơn hàng</span>
                        <span class="info-box-number"><?php echo e($totalTransactions); ?><small><a
                                    href="<?php echo e(route('admin.transaction.index')); ?>">(Chi tiết)</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-12">
                <div class="info-box">
                    <span class="info-box-icon bg-danger"><i class="fa fa-fw fa-user"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Tổng số thành viên</span>
                        <span class="info-box-number"><?php echo e(number_format($totalUsers)); ?> <small><a
                                    href="<?php echo e(route('admin.user.index')); ?>">(Chi tiết)</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-green"><i class="fa fa-database"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Sản phẩm</span>
                        <span class="info-box-number"><?php echo e($totalProducts); ?> <small><a
                                    href="<?php echo e(route('admin.product.index')); ?>">(Chi tiết)</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-yellow"><i class="far fa-star"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Đánh giá</span>
                        <span class="info-box-number"><?php echo e($totalRatings); ?> <small><a
                                    href="<?php echo e(route('admin.rating.index')); ?>">(Chi tiết)</a></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
        </div>
        <div class="row">
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-info"><i class="fas fa-dollar-sign"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Doanh thu ngày</span>
                        <span class="info-box-number"><?php echo e(number_format($totalMoneyDay, 0, ',', '.')); ?>

                            <small></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-info"><i class="fas fa-dollar-sign"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Doanh thu tuần</span>
                        <span
                            class="info-box-number"><?php echo e(number_format($totalMoneyWeed, 0, ',', '.')); ?><small></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-info"><i class="fas fa-dollar-sign"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Doanh thu tháng</span>
                        <span class="info-box-number"><?php echo e(number_format($totalMoneyMonth, 0, ',', '.')); ?>

                            <small></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-info"><i class="fas fa-dollar-sign"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Doanh thu năm</span>
                        <span class="info-box-number"><?php echo e(number_format($totalMoneyYear, 0, ',', '.')); ?>

                            <small></small></span>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>

        </div>

        <!-- /.row -->
        <div class="row" style="margin-bottom: 15px;">
            <div class="col-sm-8">
                <figure class="highcharts-figure">
                    <div id="container2" data-list-day="<?php echo e($listDay); ?>"
                        data-money-default=<?php echo e($arrRevenueTransactionMonthDefault); ?>

                        data-money=<?php echo e($arrRevenueTransactionMonth); ?>>


                    </div>
                </figure>
            </div>
            <div class="col-sm-4">
                <figure class="highcharts-figure">
                    <div id="container" data-json="<?php echo e($statusTransaction); ?>"></div>
                </figure>
            </div>
        </div>
        <!-- Main row -->
        <div class="row">
            <!-- Left col -->
            <div class="col-md-8">
                <!-- TABLE: LATEST ORDERS -->
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Danh sách đơn hàng mới</h3>

                    </div>
                    <!-- /.box-header -->

                    <div class="card card-primary">
                        <div class="card-body">
                            <table class="table no-margin">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Info</th>
                                        <th>Money</th>
                                        <th>Account</th>
                                        <th>Status</th>
                                        <th>Time</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = $transactions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $transaction): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($transaction->id); ?></td>
                                            <td>
                                                <ul>
                                                    <li>Name: <?php echo e($transaction->tst_name); ?></li>
                                                    <li>Email: <?php echo e($transaction->tst_email); ?></li>
                                                    <li>Phone: <?php echo e($transaction->tst_phone); ?></li>
                                                </ul>
                                            </td>
                                            <td><?php echo e(number_format($transaction->tst_total_money, 0, ',', '.')); ?> đ</td>
                                            <td>
                                                <?php if($transaction->tst_user_id): ?>
                                                    <span class="label label-success">Thành viên</span>
                                                <?php else: ?>
                                                    <span class="label label-default">Khách</span>
                                                <?php endif; ?>
                                            </td>
                                            <td>
                                                <span
                                                    class="label label-<?php echo e($transaction->getStatus($transaction->tst_status)['class']); ?>">
                                                    <?php echo e($transaction->getStatus($transaction->tst_status)['name']); ?>

                                                </span>
                                            </td>
                                            <td><?php echo e($transaction->created_at); ?></td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-body text-center">
                            <a href="<?php echo e(route('admin.transaction.index')); ?>" class="btn btn-sm btn-info ">Danh sách đơn
                                hàng</a>
                        </div>
                    </div>
                    <!-- /.box-body -->

                    <!-- /.box-footer -->
                </div>
                <!-- /.box -->
                <!-- TABLE: LATEST ORDERS -->
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Top sản phẩm bán trong tháng</h3>

                    </div>
                    <!-- /.box-header -->
                    <div class="card card-primary">
                        <div class="card-body">
                            <table class="table no-margin">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Image</th>
                                        <th>Qty</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php $__currentLoopData = $topProductBuyMonth; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo e($product->od_product_id); ?></td>
                                            <td><?php echo e($product->product->pro_name ?? '[N\A]'); ?></td>
                                            <td>
                                                <img src="<?php echo e(pare_url_file($product->product->pro_avatar ?? '[N\A]')); ?>"
                                                    alt="" style="width: 80px;height: 80px;">
                                            </td>
                                            <td><?php echo e($product->quantity); ?></td>
                                            <td><?php echo e(number_format($product->od_price, 0, ',', '.')); ?> VNĐ</td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                        <!-- /.box-body -->

                        <div class="card-body text-center">
                            <a href="<?php echo e(route('admin.product.index')); ?>" class="btn btn-sm btn-info">Danh sách sản
                                phẩm</a>
                        </div>
                    </div>

                    <!-- /.box-footer -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
            <div class="col-md-4">
                <!-- PRODUCT LIST -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Top sản phẩm bán chạy</h3>

                    </div>
                    <!-- /.box-header -->
                    <div class="card">
                        <div class="card-body">
                            <ul class="products-list product-list-in-box">
                                <?php $__currentLoopData = $topPayProducts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <li class="item">
                                        <div class="product-img">
                                            <img src="<?php echo e(pare_url_file($item->pro_avatar)); ?>" alt="Product Image">
                                        </div>
                                        <div class="product-info">
                                            <a href="javascript:void(0)" class="product-title">
                                                <?php echo e($item->pro_pay); ?> Lượt mua
                                                <span
                                                    class="label label-warning pull-right"><?php echo e(number_format($item->pro_price, 0, ',', '.')); ?>

                                                    đ</span>
                                            </a>
                                            <span class="product-description"><?php echo e($item->pro_name); ?></span>
                                        </div>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                        <div class="card-body text-center">
                            <a href="<?php echo e(route('admin.product.index')); ?>" class="btn btn-sm btn-info">Xem tất cả sản phẩm</a>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                    <!-- PRODUCT LIST -->

                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
                </div>
            </div>
        
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <link rel="stylesheet" href="https://code.highcharts.com/css/highcharts.css">
    <script src="https://code.highcharts.com/highcharts.js"></script>
    
    
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <script type="text/javascript">
        let dataTransaction = $("#container").attr('data-json');
        dataTransaction = JSON.parse(dataTransaction);

        let listday = $("#container2").attr("data-list-day");
        listday = JSON.parse(listday);

        let listMoneyMonth = $("#container2").attr('data-money');
        listMoneyMonth = JSON.parse(listMoneyMonth);

        let listMoneyMonthDefault = $("#container2").attr('data-money-default');
        listMoneyMonthDefault = JSON.parse(listMoneyMonthDefault);

        Highcharts.chart('container', {

            chart: {
                styledMode: true
            },

            title: {
                text: 'Thống kê trạng thái đơn hàng'
            },

            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr']
            },

            series: [{
                type: 'pie',
                allowPointSelect: true,
                keys: ['name', 'y', 'selected', 'sliced'],
                data: dataTransaction,
                showInLegend: true
            }]
        });

        Highcharts.chart('container2', {
            chart: {
                type: 'spline'
            },
            title: {
                text: 'Biểu đồ doanh thu các ngày trong tháng'
            },
            // subtitle: {
            //     text: 'Source: WorldClimate.com'
            // },
            xAxis: {
                categories: listday
            },
            yAxis: {
                title: {
                    text: 'Biển đồ giá trị'
                },
                labels: {
                    formatter: function() {
                        return this.value + '°';
                    }
                }
            },
            tooltip: {
                crosshairs: true,
                shared: true
            },
            plotOptions: {
                spline: {
                    marker: {
                        radius: 4,
                        lineColor: '#666666',
                        lineWidth: 1
                    }
                }
            },
            series: [{
                    name: 'Hoàn tất giao dịch',
                    marker: {
                        symbol: 'square'
                    },
                    data: listMoneyMonth
                },
                {
                    name: 'Tiếp nhận',
                    marker: {
                        symbol: 'square'
                    },
                    data: listMoneyMonthDefault
                }
            ]
        });
        $("body .highcharts-credits").remove();
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app_master_admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\book_store_lavarel\resources\views/admin/statistical/index.blade.php ENDPATH**/ ?>