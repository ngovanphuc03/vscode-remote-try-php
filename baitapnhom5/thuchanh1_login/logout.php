<?php
session_start();
if ($_SESSION["IsLogin"] == false) {
    header("Location: login.html");
    exit(); // Dừng thực thi mã PHP ngay sau khi chuyển hướng
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang Đăng Xuất</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f1f1f1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            transition: background-color 0.3s ease;
        }
        .container {
            text-align: center;
        }
        h2 {
            margin-bottom: 30px;
        }
        .logout-button {
            padding: 15px 30px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .logout-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Bạn Muốn Đăng Xuất Không ?</h2>
        <form action="login.html" method="get">
            <input type="submit" class="logout-button" value="Đăng xuất Ngay">
        </form>
    </div>
</body>
</html>
