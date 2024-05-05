<?php
$upload_dir = "upload/";

// Tạo thư mục "upload" nếu nó chưa tồn tại
if (!file_exists($upload_dir)) {
    mkdir($upload_dir, 0777, true);
}

$uploadOk = 1;

if (isset($_POST["submit"])) {
    $target_file = $upload_dir . basename($_FILES["fileToUpload"]["name"]);
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if ($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }

    if (file_exists($target_file)) {
        echo "Sorry, file already exists.";
        $uploadOk = 0;
    }

    if ($_FILES["fileToUpload"]["size"] > 500000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }

    if ($imageFileType != "txt" && $imageFileType != "pdf" && $imageFileType != "png" && $imageFileType != "jpg" && $imageFileType != "jpeg" && $imageFileType != "gif") {
        echo "Sorry, only TXT, PDF, PNG, JPG, JPEG, GIF files are allowed.";
        $uploadOk = 0;
    }

    if ($uploadOk == 1) {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
}

// Mã hoá mật khẩu bằng SHA1 trước khi lưu vào cơ sở dữ liệu
$password = "webnangcao"; 
$hashed_password = sha1($password);

echo "" . $hashed_password;
?>
