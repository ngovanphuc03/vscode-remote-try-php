<?php
$upload_dir = "upload/";

// Hiển thị danh sách các tệp đã tải lên theo thứ tự từ mới nhất đến cũ nhất
$files = array_diff(scandir($upload_dir), array('.', '..'));
// Sắp xếp mảng ngược lại để hiển thị tệp mới nhất đầu tiên
rsort($files);

if (count($files) > 0) {
    foreach ($files as $file) {
        $file_path = $upload_dir . $file;
        $file_info = pathinfo($file_path);
        $file_type = isset($file_info['extension']) ? $file_info['extension'] : '';
        $file_date = date("Y-m-d H:i:s", filemtime($file_path));
        $file_size = filesize($file_path);
        echo "<tr>";
        echo "<td>{$file}</td><br>"; 
        echo "</tr><tr>";
        echo "<td>{$file_type}</td><br>"; 
        echo "</tr><tr>";
        echo "<td>{$file_date}</td><br>"; 
        echo "</tr><tr>";
        echo "<td>{$file_size} bytes</td><br>"; 
        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='4'>No files uploaded yet.</td></tr>";
}
?>
