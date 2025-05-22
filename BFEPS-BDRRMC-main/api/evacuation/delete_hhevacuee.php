<?php
header('Content-Type: application/json');
include_once 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get ID and convert to integer
    $id = isset($_POST['id']) ? intval($_POST['id']) : null;

    // Debug: Save received data
    file_put_contents("debug_log.txt", "Received ID: " . json_encode($_POST) . PHP_EOL, FILE_APPEND);

    if (!$id) {
        echo json_encode(['success' => false, 'message' => 'ID is required.']);
        exit;
    }

    // Prepare DELETE statement
    $stmt = $conn->prepare("DELETE FROM evacuees WHERE id = ?");
    $stmt->bind_param("i", $id);

    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Report deleted successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to delete report.']);
    }

    $stmt->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request method.']);
}

$conn->close();
?>
