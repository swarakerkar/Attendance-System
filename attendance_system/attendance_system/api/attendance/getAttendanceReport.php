<?php
include("../cors.php");
$host = "localhost";
$user = "root";
$password = "";
$database = "attendance_system";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
header('Content-Type: application/json');

// Validate input
$student_id = $_GET['student_id'] ?? null;
$subject_id = $_GET['subject_id'] ?? null;

if (!$student_id || !$subject_id) {
    echo json_encode([
        "error" => "Missing student_id or subject_id"
    ]);
    exit;
}

// Total classes attended/found
$totalQuery = "
SELECT COUNT(*) as total 
FROM attendance 
WHERE student_id = ? AND subject_id = ?
";

$stmt = $conn->prepare($totalQuery);
$stmt->bind_param("ss", $student_id, $subject_id);
$stmt->execute();
$total_result = $stmt->get_result()->fetch_assoc();

$total_classes = $total_result['total'];

// Present count
$presentQuery = "
SELECT COUNT(*) as present 
FROM attendance 
WHERE student_id = ? 
AND subject_id = ? 
AND status = 'present'
";

$stmt = $conn->prepare($presentQuery);
$stmt->bind_param("ss", $student_id, $subject_id);
$stmt->execute();
$present_result = $stmt->get_result()->fetch_assoc();

$present_classes = $present_result['present'];

// Percentage calculation
$percentage = 0;

if ($total_classes > 0) {
    $percentage = ($present_classes / $total_classes) * 100;
}

// Response
echo json_encode([
    "student_id" => $student_id,
    "subject_id" => $subject_id,
    "total_classes" => $total_classes,
    "present" => $present_classes,
    "percentage" => round($percentage, 2)
]);

?>