<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

require_once 'db_connect.php';

$search = isset($_GET['query']) ? $_GET['query'] : '';

$sql = "SELECT * FROM evacuees WHERE head_family LIKE ?";
$stmt = $conn->prepare($sql);

if ($stmt === false) {
    echo json_encode(["success" => false, "message" => "Prepare failed: " . $conn->error]);
    exit;
}

$searchParam = "%" . $search . "%";
$stmt->bind_param("s", $searchParam);
$stmt->execute();
$result = $stmt->get_result();

$data = [];
while ($row = $result->fetch_assoc()) {
    $data[] = $row;
}

echo json_encode($data);
