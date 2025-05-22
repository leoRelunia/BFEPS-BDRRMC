<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Decode the incoming JSON
$data = json_decode(file_get_contents("php://input"));

// Check if both username and password are provided
if (!isset($data->usr_username) || !isset($data->usr_password)) {
    echo json_encode([
        "status" => "error",
        "message" => "Missing username or password"
    ]);
    exit;
}

$username = $data->usr_username;
$password = $data->usr_password;

// Database connection setup
$host = "localhost";
$dbname = "login"; // Change this to your actual database name
$dbuser = "root";  // Adjust if you're not using the default user
$dbpass = "";      // Set this if your MySQL has a password

$conn = new mysqli($host, $dbuser, $dbpass, $dbname);

// Check connection
if ($conn->connect_error) {
    echo json_encode([
        "status" => "error",
        "message" => "Database connection failed: " . $conn->connect_error
    ]);
    exit;
}

// Query user data securely for username and password validation
$stmt = $conn->prepare("SELECT id, name, position, user_password FROM user_bfeps WHERE user_name = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();

    // Direct password match (No hashing)
    if ($password === $user["user_password"]) {
        echo json_encode([
            "status" => "success",
            "message" => "Login successful",
            "data" => [
                "id" => $user["id"],
                "name" => $user["name"],
                "position" => $user["position"],
                "user_name" => $username
            ]
        ]);
    } else {
        echo json_encode([
            "status" => "error",
            "message" => "Invalid username or password"
        ]);
    }
} else {
    echo json_encode([
        "status" => "error",
        "message" => "Invalid username or password"
    ]);
}

$stmt->close();
$conn->close();
?>
