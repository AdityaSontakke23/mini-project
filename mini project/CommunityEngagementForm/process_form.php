<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $fullName = htmlspecialchars(trim($_POST['fullName']));
    $email = htmlspecialchars(trim($_POST['email']));
    $phone = isset($_POST['phone']) ? htmlspecialchars(trim($_POST['phone'])) : "";
    $city = htmlspecialchars(trim($_POST['city']));
    $contribution = htmlspecialchars(trim($_POST['contribution']));
    $volunteer = htmlspecialchars(trim($_POST['volunteer']));
    $participationMode = htmlspecialchars(trim($_POST['participationMode']));
    $skills = htmlspecialchars(trim($_POST['skills']));
    $rating = htmlspecialchars(trim($_POST['rating']));
    $actions = htmlspecialchars(trim($_POST['actions']));

    if (!preg_match("/^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+$/", $email) || preg_match("/[!#$%^&*(),?\":{}|<>]/", $email)) {
        die("Invalid email format. Please enter a valid email like example@domain.com");
    }

    if (!preg_match("/^\d{10}$/", $phone)) {
        echo("Invalid phone number. It must be exactly 10 digits long.");
        

    }

    echo "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css' rel='stylesheet'>
    <title>Submission Received</title>
</head>
<body class='bg-dark text-white'>
    <div class='container my-5 text-center'>
        <h1>Thank You, " . htmlspecialchars($fullName) . "!</h1>
        <p>Your response has been recorded. We appreciate your interest in community engagement.</p>
        <a href='../HomePage/homepage.php' class='btn btn-primary'>Go to Homepage</a>
    </div>
</body>
</html>";

} else {
    header("Location: community.html");
    exit();
}
?>
