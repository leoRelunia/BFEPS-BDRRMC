<?php
include 'db_connect.php';
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get JSON data from request
    $data = json_decode(file_get_contents("php://input"), true) ?? [];

    // Debug: Save received data to a log file
    file_put_contents("debug_update_log.txt", "Received Data: " . json_encode($data) . PHP_EOL, FILE_APPEND);

    // Check if data is received properly
    if (!$data || !isset($data['id'])) {
        echo json_encode(['success' => false, 'message' => 'No data received or ID missing.']);
        exit;
    }

    // Convert id to integer
    $id = intval($data['id']);
    $date = $data['date'] ?? '';
    $calamity_name = $data['calamity_name'] ?? '';
    $calamity_type = $data['calamity_type'] ?? '';
    $severity_level = $data['severity_level'] ?? '';
    $flood_cause = $data['flood_cause'] ?? '';
    $alert_level = $data['alert_level'] ?? '';
    $current_status = $data['current_status'] ?? '';

    // Validate input fields
    if (empty($id) || empty($date) || empty($calamity_name) || empty($calamity_type) || empty($severity_level) || empty($flood_cause) || empty($alert_level) || empty($current_status)) {
        echo json_encode(['success' => false, 'message' => 'All fields are required.']);
        exit;
    }

    // Prepare SQL statement
    $sql = "UPDATE calamity SET date=?, calamity_name=?, calamity_type=?, severity_level=?, flood_cause=?, alert_level=?, current_status=? WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssssi", $date, $calamity_name, $calamity_type, $severity_level, $flood_cause, $alert_level, $current_status, $id);

    // Execute update query
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Report updated successfully.']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to update report.', 'error' => $stmt->error]);
    }

    $stmt->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Invalid request method.']);
}

$conn->close();
?>
