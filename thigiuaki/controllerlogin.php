<?php
include 'modellogin.php';

if (!isset($_POST['username']) || !isset($_POST['password'])) {
    header("Location: login.html"); 
    exit();
}

// Lấy thông tin từ form
$username = $_POST['username'];
$password = $_POST['password'];

// Tạo một thể hiện của Model
$loginModel = new LoginModel();

// Kiểm tra đăng nhập
if ($loginModel->kiemTraDangNhap($username, $password)) {
    // Nếu đăng nhập thành công, chuyển hướng đến trang Sach.php
    header("Location: Sach.php"); 
} else {
    // Nếu không thành công, chuyển hướng đến trang login.html
    header("Location: login.html"); 
}
?>
