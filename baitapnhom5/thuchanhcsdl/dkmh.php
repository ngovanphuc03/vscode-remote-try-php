<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông tin đăng ký môn học</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: rgb(68, 114, 196);
            color: white;
        }
        tr:nth-child(odd) {
            background-color: rgb(207, 213, 234);
        }
        tr:nth-child(even) {
            background-color: rgb(255, 255, 255);
        }
        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
        }
        h2 {
            text-align: center;
            color: rgb(68, 114, 196);
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Thông tin đăng ký môn học</h2>
    <?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pka_s";

    // Tạo kết nối đến cơ sở dữ liệu
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Kiểm tra kết nối
    if ($conn->connect_error) {
        die("Kết nối thất bại: " . $conn->connect_error);
    }

    // Truy vấn để lấy thông tin từ bảng dangky, sinhvien và monhoc
    $sql = "SELECT sinhvien.MSSV, sinhvien.HoTen, dangky.Ky, monhoc.TenMH 
            FROM dangky 
            INNER JOIN sinhvien ON dangky.MSSV = sinhvien.MSSV 
            INNER JOIN monhoc ON dangky.MaMH = monhoc.MaMH";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // In tiêu đề của bảng
        echo "<table>
                <tr>
                    <th>MSSV</th>
                    <th>Họ tên</th>
                    <th>Kỳ</th>
                    <th>Đăng ký (Môn học)</th>
                </tr>";
        // In dữ liệu từ các hàng kết quả
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>" . $row["MSSV"] . "</td>
                    <td>" . $row["HoTen"] . "</td>
                    <td>" . $row["Ky"] . "</td>
                    <td>" . $row["TenMH"] . "</td>
                </tr>";
        }
        echo "</table>";
    } else {
        echo "Không có dữ liệu để hiển thị";
    }

    // Đóng kết nối
    $conn->close();
    ?>
</div>

</body>
</html>
