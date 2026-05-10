<?php
include("../cors.php");
include("../db.php");
$subject_id = $_GET['subject_id'] ?? null;
$date = $_GET['date'] ?? null;

if (!$subject_id || !$date) {
    echo json_encode(["error" => "Missing parameters"]);
    exit;
}
// 1. Get session info
$sessionQuery = "
SELECT a.id, a.date, a.faculty_name, s.name AS subject_name
FROM attendance_sessions a
JOIN subjects s ON a.subject_id = s.id
WHERE a.subject_id = ? AND a.date = ?
";

$stmt = $conn->prepare($sessionQuery);
$stmt->bind_param("is", $subject_id, $date);
$stmt->execute();
$session = $stmt->get_result()->fetch_assoc();

if (!$session) {
    echo json_encode(["error" => "No session found"]);
    exit;
}

$session_id = $session['id'];

// 2. Get attendance records
$query = "
SELECT st.name, st.student_id, ar.is_present
FROM attendance_records ar
JOIN students st ON ar.student_id = st.id
WHERE ar.session_id = ?
";

$stmt = $conn->prepare($query);
$stmt->bind_param("i", $session_id);
$stmt->execute();
$result = $stmt->get_result();

// 3. Calculate report
$total = 0;
$present = 0;
$students = [];
$defaulters = [];

while ($row = $result->fetch_assoc()) {
    $total++;

    $students[] = $row;

    if ($row['is_present']) {
        $present++;
    } else {
        $defaulters[] = $row;
    }
}

$absent = $total - $present;
$percentage = $total > 0 ? ($present / $total) * 100 : 0;

// 4. Final report
echo json_encode([
    "session" => $session,
    "summary" => [
        "total_students" => $total,
        "present" => $present,
        "absent" => $absent,
        "attendance_percentage" => round($percentage, 2)
    ],
    "students" => $students,
    "defaulters" => $defaulters
]);