<?php
session_start();
$error = "";

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = trim($_POST["email"]);
    $password = trim($_POST["password"]);

    // Check for hardcoded admin credentials first
    $adminEmail = "admin@climatesync.com";
    $adminPassword = "admin123"; // You can hash and use password_verify if preferred

    if ($email === $adminEmail && $password === $adminPassword) {
        $_SESSION["username"] = "admin";
        $_SESSION["is_admin"] = true;
        header("Location: ../HomePage/homepage.php");
        exit();
    }

    $conn = new mysqli("localhost", "root", "root", "ClimateSync");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $stmt = $conn->prepare("SELECT username, password FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows === 1) {
        $stmt->bind_result($username, $hashedPassword);
        $stmt->fetch();

        if (password_verify($password, $hashedPassword)) {
            $_SESSION["username"] = $username;
            $_SESSION["is_admin"] = false;
            header("Location: ../HomePage/homepage.php");
            exit();
        } else {
            $error = "Invalid email or password.";
        }
    } else {
        $error = "Invalid email or password.";
    }

    $stmt->close();
    $conn->close();
}
?>
