<?php
include 'db_connect.php';


$sql = "SELECT id, calamity_type, severity_level, flood_cause, alert_level, current_status, date, calamity_name FROM calamity";


$result = $conn->query($sql);

$reports = [];

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $reports[] = $row;
    }
}

echo json_encode($reports);

$conn->close();
