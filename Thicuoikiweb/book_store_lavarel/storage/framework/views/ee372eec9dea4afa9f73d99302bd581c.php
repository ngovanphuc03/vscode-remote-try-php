<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
        <title><?php echo e(($title_page ?? "BOOK")); ?></title>
        <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
        <link rel="icon" sizes="32x32" type="image/png" href="<?php echo e(asset('ico.png')); ?>" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
        <link rel="stylesheet" href="<?php echo asset('admin/plugins/toastr/toastr.min.css'); ?>">
        <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/assets/css/chat.min.css">
        <?php echo $__env->yieldContent('css'); ?>

        
        <?php if(session('toastr')): ?>
            <script>
                var TYPE_MESSAGE = "<?php echo e(session('toastr.type')); ?>";
                var MESSAGE = "<?php echo e(session('toastr.message')); ?>";
            </script>
        <?php endif; ?>
        <style>
            .main-title {
                color: rgb(255, 0, 21);
            }
            .product-item a h3 {
                font-size: 14px !important;
            }
        </style>
    </head>
    <body>
        <?php echo $__env->make('frontend.components.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php echo $__env->yieldContent('content'); ?>
        <?php echo $__env->make('frontend.components.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <script>
            var DEVICE = '<?php echo e(device_agent()); ?>'
        </script>
        <script>
            var botmanWidget = {
                aboutText: 'Start the conversation with Hi',
                introMessage: "Chào bạn đến với tư vấn sản phẩm của DC BOOK"
            };
        </script>

        <script src='https://cdn.jsdelivr.net/npm/botman-web-widget@0/build/js/widget.js'></script>
        <?php echo $__env->yieldContent('script'); ?>
    </body>
</html>
<?php /**PATH C:\Users\khai.dv\Desktop\book_store_laravel\resources\views/layouts/app_master_frontend.blade.php ENDPATH**/ ?>