<?php
// Khởi tạo session
session_start();

// Kiểm tra nếu không có dữ liệu gửi đến từ form
if (!isset($_POST['username']) || !isset($_POST['password'])) {
    header("Location: login.htm"); // Redirect về trang login nếu không có dữ liệu
    exit();
}

// Kết nối đến CSDL
// Thực hiện truy vấn kiểm tra thông tin đăng nhập

// Ví dụ: kết nối đến CSDL và thực hiện truy vấn
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "datalogin";

$conn = new mysqli($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Kết nối tới CSDL thất bại: " . $conn->connect_error);
}

// Lấy thông tin từ form
$username = $_POST['username'];
$password = $_POST['password'];

// Xử lý truy vấn kiểm tra thông tin đăng nhập
$sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
$result = $conn->query($sql);

// Kiểm tra số dòng dữ liệu trả về từ truy vấn
if ($result->num_rows > 0) {
    // Thành công - thông tin đăng nhập hợp lệ
    $_SESSION["IsLogin"] = true; // Đặt biến session IsLogin là true
    header("Location: logout.php"); // Redirect đến trang chính sau khi đăng nhập thành công
} else {
    // Không thành công - thông tin đăng nhập không hợp lệ
    $_SESSION["IsLogin"] = false; // Đặt biến session IsLogin là false
    header("Location: login.html"); // Redirect về trang login
}

$conn->close();
?>
