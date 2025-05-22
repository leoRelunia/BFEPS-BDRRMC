<?php

include 'db_connect.php';

// Get the POST data
$data = json_decode(file_get_contents("php://input"), true);

// Define required fields
$required_fields = ['date', 'calamity_name', 'calamity_type', 'severity_level', 'flood_cause', 'alert_level', 'current_status'];

// Check for missing fields
$missing_fields = [];
foreach ($required_fields as $field) {
    if (empty($data[$field])) {
        $missing_fields[] = $field;
    }
}

// Return error if any required field is missing
if (!empty($missing_fields)) {
    echo json_encode([
        "success" => false,
        "message" => "Missing required fields: " . implode(", ", $missing_fields)
    ]);
    exit;
}

// Prepare the SQL statement (without calamity_id since it's auto-incremented)
$stmt = $conn->prepare("INSERT INTO calamity (date, calamity_name, calamity_type, severity_level, flood_cause, alert_level, current_status)
                        VALUES (?, ?, ?, ?, ?, ?, ?)");

// Check for preparation errors
if ($stmt === false) {
    echo json_encode(["success" => false, "message" => "Error preparing the statement: " . $conn->error]);
    exit;
}

// Bind parameters
$stmt->bind_param(
    "sssssss",
    $data['date'],
    $data['calamity_name'],
    $data['calamity_type'],
    $data['severity_level'],
    $data['flood_cause'],
    $data['alert_level'],
    $data['current_status']
);

// Execute and check result
if ($stmt->execute()) {
    // Retrieve the newly inserted calamity_id
    $insertedId = $conn->insert_id;

    echo json_encode([
        "success" => true,
        "message" => "Calamity saved successfully",
        "calamity_id" => $insertedId
    ]);
} else {
    echo json_encode([
        "success" => false,
        "message" => "Failed to save calamity: " . $stmt->error
    ]);
}

$stmt->close();
$conn->close();
?>
