<?php
session_start();

class LoginModel {
    private $conn;

    public function __construct() {
        // Kết nối CSDL
        $servername = "localhost";
        $username = "avnadmin";
        $password = "";
        $dbname = "User";

        $this->conn = new mysqli($servername, $username, $password, $dbname);

        // Kiểm tra kết nối
        if ($this->conn->connect_error) {
            die("Kết nối tới CSDL thất bại: " . $this->conn->connect_error);
        }
    }

    public function kiemTraDangNhap($username, $password) {
        // Xử lý truy vấn kiểm tra thông tin đăng nhập
        $sql = "SELECT * FROM users WHERE TenUser='$username' AND MatKhau='$password'";
        $result = $this->conn->query($sql);

        // Kiểm tra số dòng dữ liệu trả về từ truy vấn
        if ($result->num_rows > 0) {
            // Thành công - thông tin đăng nhập hợp lệ
            $_SESSION["IsLogin"] = true; 
            return true;
        } else {
            // Không thành công - thông tin đăng nhập không hợp lệ
            $_SESSION["IsLogin"] = false; 
            return false;
        }
    }
}
?>
