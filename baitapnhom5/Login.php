<!DOCTYPE html>
<html>
<head>
    <title>Đăng nhập hệ thống</title>
    <style>
        h2 {
            color: blue;
        }

        .login-form {
            display: block;
        }

        .hidden {
            display: none;
        }
    </style>
    <script>
        function showPassword() {
            var passwordField = document.getElementById("password");
            passwordField.type = "text";
            passwordField.style.color = "red";

            var loginForm = document.getElementById("login-form");
            loginForm.classList.add("hidden");
        }
    </script>
</head>
<body>
    <h2>Đăng nhập hệ thống</h2>
    <div id="login-form" class="login-form">
        <form method="post" action="">
            <label for="username">Tên đăng nhập:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="password">Mật khẩu:</label><br>
            <input type="password" id="password" name="password"><br><br>
            <input type="button" value="Hiện mật khẩu" onclick="showPassword()">
            <br><br>
            <input type="submit" value="Đăng nhập" name="submit">
        </form>
    </div>

    <?php
    // Kiểm tra nếu có dữ liệu được gửi đi từ form
    if (isset($_POST['submit'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        echo "<h3>Thông tin đăng nhập:</h3>";
        echo "Tên đăng nhập:<span style='color:red;'>$username</span> <br>";
        echo "Mật khẩu: <span style='color:red;'>$password</span>";
    }
    ?>
</body>
</html>