<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

require_once 'db_connect.php'; // Connects to your 'evacuation' database

// Dummy data array
$dummyData = [
    [
        'id' => 'HH001',
        'head_family' => 'Juan Dela Cruz',
        'infant' => 1,
        'toddlers' => 1,
        'preschool' => 0,
        'school_age' => 2,
        'teen_age' => 1,
        'adult' => 2,
        'senior_citizen' => 1,
        'total_persons' => 8,
        'lactating_mothers' => 0,
        'pregnant' => 1,
        'pwd' => 1,
        'solo_parent' => 0,
    ],
    [
        'id' => 'HH002',
        'head_family' => 'Maria Clara',
        'infant' => 0,
        'toddlers' => 0,
        'preschool' => 1,
        'school_age' => 3,
        'teen_age' => 2,
        'adult' => 2,
        'senior_citizen' => 0,
        'total_persons' => 8,
        'lactating_mothers' => 0,
        'pregnant' => 1,
        'pwd' => 1,
        'solo_parent' => 1,
    ],
    [
        'id' => 'HH003',
        'head_family' => 'Jose Rizal',
        'infant' => 1,
        'toddlers' => 2,
        'preschool' => 0,
        'school_age' => 1,
        'teen_age' => 1,
        'adult' => 2,
        'senior_citizen' => 0,
        'total_persons' => 7,
        'lactating_mothers' => 1,
        'pregnant' => 0,
        'pwd' => 0,
        'solo_parent' => 0,
    ],
     [
        //new
        'id' => 'HH004',
        'head_family' => 'Jayla Romero',
        'infant' => 0,
        'toddlers' => 0,
        'preschool' => 0,
        'school_age' => 1,
        'teen_age' => 2,
        'adult' => 5,
        'senior_citizen' => 2,
        'total_persons' => 10,
        'lactating_mothers' => 0,
        'pregnant' => 0,
        'pwd' => 0,
        'solo_parent' => 0,
    ],
];

// Insert data into the database
foreach ($dummyData as $row) {
    $stmt = $conn->prepare("INSERT INTO evacuees (
        id, head_family, infant, toddlers, preschool,
        school_age, teen_age, adult, senior_citizen, total_persons,
        lactating_mothers, pregnant, pwd, solo_parent
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    if ($stmt === false) {
        echo json_encode(["success" => false, "message" => "Prepare failed: " . $conn->error]);
        exit;
    }

    $stmt->bind_param(
        "ssssssssssssss",
        $row['id'],
        $row['head_family'],
        $row['infant'],
        $row['toddlers'],
        $row['preschool'],
        $row['school_age'],
        $row['teen_age'],
        $row['adult'],
        $row['senior_citizen'],
        $row['total_persons'],
        $row['lactating_mothers'],
        $row['pregnant'],
        $row['pwd'],
        $row['solo_parent']
    );

    if (!$stmt->execute()) {
        echo json_encode(["success" => false, "message" => "Execute failed: " . $stmt->error]);
        $stmt->close();
        exit;
    }

    $stmt->close();
}

echo json_encode([
    "success" => true,
    "message" => "Dummy data inserted into 'evacuees' table.",
    "data" => $dummyData
]);
