<?php
session_start();
$error = "";


if ($_SERVER["REQUEST_METHOD"] === "POST") {
    
    $dummyEmail = "aditya@gmail.com";
    $dummyPassword = "password123"; 

    $email = trim($_POST["email"]);
    $password = trim($_POST["password"]);

    if ($email === $dummyEmail && $password === $dummyPassword) {
        $_SESSION["username"] = "aditya"; 
        header("Location: ../HomePage/homepage.php");
        exit();
    } else {
        $error = "Invalid email or password.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ClimateSync - Log In</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
  <header>
    <h1>ClimateSync</h1>
    <nav>
        <ul>
            <li><a href="../HomePage/homepage.php">Home</a></li>
            <!-- <li><a href="#features">Features</a></li> -->
            <li><a href="../contact/contact.php">Contact</a></li>
            <li><a href="../SignupPage/signup.php">Sign Up</a></li>
        </ul>
    </nav>
  </header>
  
  <section class="login-section">
    <div class="login-container">
        <h2>Log In to Your Account</h2>
        <?php if (!empty($error)): ?>
            <p style="color: red;"><?php echo htmlspecialchars($error); ?></p>
        <?php endif; ?>
        <form id="login-form" method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required placeholder="Enter your email" value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : ''; ?>">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required placeholder="Enter your password">
            </div>
            <button type="submit" class="submit-btn">Log In</button>
        </form>
        <p>Don't have an account? <a href="../SignupPage/signup.php">Sign Up</a></p>
    </div>
  </section>

  <footer>
    <p>&copy; 2025 ClimateSync. Mini project.</p>
  </footer>

  <script src="login.js" defer></script>
</body>
</html>
