<?php
include 'db_connect.php';

$response = ["success" => false];
$uploadDir = "uploads/";

if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0777, true);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['pictures'])) {
    $originalName = $_FILES["pictures"]["name"];
    $sanitizedFileName = preg_replace('/\s+/', '_', $originalName);
    $fileName = time() . "_" . $sanitizedFileName;

    $targetFilePath = $uploadDir . $fileName;

    if (move_uploaded_file($_FILES["pictures"]["tmp_name"], $targetFilePath)) {
        // Dynamically determine the server's address
        $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https' : 'http';
        $serverName = $_SERVER['SERVER_NAME']; // This gets the domain or IP address of the server
        $fullUrl = $protocol . '://' . $serverName . '/BFEPS-BDRRMC-MAIN/api/rop/' . $targetFilePath;

        $response = ["success" => true, "filepath" => $fullUrl];
    } else {
        $response["error"] = "File upload failed!";
    }
} else {
    $response["error"] = "No file uploaded.";
}

echo json_encode($response);
