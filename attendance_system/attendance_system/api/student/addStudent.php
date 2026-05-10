<?php
include("../cors.php");
include "../db.php";

header("Content-Type: application/json");

// hide PHP warnings from API response
ini_set('display_errors', 0);
error_reporting(E_ALL);

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    echo json_encode([
        "status" => "error",
        "message" => "Invalid request method"
    ]);
    exit();
}

// Receive data from FormData
$name = $_POST['name'] ?? '';
$roll_no = $_POST['roll_no'] ?? '';
$department_id = $_POST['department_id'] ?? '';
$year = $_POST['year'] ?? '';
$batch = $_POST['batch'] ?? '';
$password = $_POST['password'] ?? '';
$email = $_POST['email'] ?? '';

// Validate required fields
if (
    empty($name) ||
    empty($roll_no) ||
    empty($department_id) ||
    empty($year) ||
    empty($password) ||
    empty($email)
) {
    echo json_encode([
        "status" => "error",
        "message" => "Required fields are missing"
    ]);
    exit();
}

$student_image_name = "";

// Upload image
if (isset($_FILES['student_image']) && $_FILES['student_image']['error'] === 0) {
    $target_dir = "../../student_images/";

    if (!is_dir($target_dir)) {
        mkdir($target_dir, 0777, true);
    }

    $original_name = basename($_FILES["student_image"]["name"]);
    $extension = strtolower(pathinfo($original_name, PATHINFO_EXTENSION));
    $allowed = ["jpg", "jpeg", "png", "gif"];

    if (!in_array($extension, $allowed)) {
        echo json_encode([
            "status" => "error",
            "message" => "Only JPG, JPEG, PNG, GIF files are allowed"
        ]);
        exit();
    }

    $student_image_name = time() . "_" . rand(1000, 9999) . "." . $extension;
    $target_file = $target_dir . $student_image_name;

    if (!move_uploaded_file($_FILES["student_image"]["tmp_name"], $target_file)) {
        echo json_encode([
            "status" => "error",
            "message" => "Failed to upload image"
        ]);
        exit();
    }
} else {
    echo json_encode([
        "status" => "error",
        "message" => "Student image is required"
    ]);
    exit();
}

// Optional: check valid department
$checkDept = mysqli_query($conn, "SELECT id FROM departments WHERE id='$department_id'");
if (mysqli_num_rows($checkDept) == 0) {
    echo json_encode([
        "status" => "error",
        "message" => "Invalid department_id: $department_id"
    ]);
    exit();
}

// Insert student
$sql = "INSERT INTO students (name, roll_no, department_id, year, batch, password, email, student_image)
        VALUES ('$name', '$roll_no', '$department_id', '$year', '$batch', '$password', '$email', '$student_image_name')";

if (mysqli_query($conn, $sql)) {
    echo json_encode([
        "status" => "success",
        "message" => "Student added successfully"
    ]);
} else {
    echo json_encode([
        "status" => "error",
        "message" => mysqli_error($conn)
    ]);
}
exit();
?>