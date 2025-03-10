<?php
session_start();

$success = "";
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Retrieve and sanitize form data
    $name = trim($_POST["name"]);
    $email = trim($_POST["email"]);
    $message = trim($_POST["message"]);

    // Basic validation: check that all fields are filled
    if (!empty($name) && !empty($email) && !empty($message)) {
        // In a real application, you might save this info to a database or send an email.
        $success = "Thank you, " . htmlspecialchars($name) . ". Your message has been received!";
    } else {
        $success = "Please fill in all fields.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ClimateSync - Contact Us</title>
  <!-- Bootstrap CSS for styling -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Optional: link to your custom CSS -->
  <link rel="stylesheet" href="../contact/contact.css">
</head>
<body>
  <header class="d-flex justify-content-between align-items-center p-3">
    <h1>ClimateSync</h1>
    <nav>
      <ul class="nav">
        <li class="nav-item"><a class="nav-link" href="../homepage/homepage.php">Home</a></li>
        <!-- <li class="nav-item"><a class="nav-link" href="../homepage/homepage.php#features">Features</a></li>
        <li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li> -->
        <?php if (isset($_SESSION['username'])): ?>
          <li class="nav-item">
            <span class="nav-link">Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?></span>
          </li>
          <li class="nav-item">
            <a class="nav-link button" href="../logout.php">Log Out</a>
          </li>
        <?php else: ?>
          <li class="nav-item"><a class="nav-link button" href="../LoginPage/login.php">Log In</a></li>
          <li class="nav-item"><a class="nav-link button" href="../SignupPage/signup.php">Sign Up</a></li>
        <?php endif; ?>
      </ul>
    </nav>
  </header>

  <!-- Contact Information Section -->
  <section class="contact-info container my-5">
    <h2>Contact Information</h2>
    <p>Email: info@climatesync.com</p>
    <p>Phone: +1 234 567 890</p>
  </section>

  <!-- Contact Form Section -->
  <section class="contact-form container my-5">
    <h2>Send Us a Message/Feedback</h2>
    <?php if (!empty($success)): ?>
      <div class="alert alert-success" role="alert">
        <?php echo $success; ?>
      </div>
    <?php endif; ?>
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
      <div class="mb-3">
         <label for="name" class="form-label">Name</label>
         <input type="text" class="form-control" id="name" name="name" placeholder="Your Name" required>
      </div>
      <div class="mb-3">
         <label for="email" class="form-label">Email</label>
         <input type="email" class="form-control" id="email" name="email" placeholder="Your Email" required>
      </div>
      <div class="mb-3">
         <label for="message" class="form-label">Message</label>
         <textarea class="form-control" id="message" name="message" rows="5" placeholder="Describe your problem or feedback" required></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </section>

  <footer class="text-center p-4">
    <p>&copy; 2025 ClimateSync. Mini project.</p>
  </footer>

  <!-- Bootstrap Bundle with Popper for dropdown functionality -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
