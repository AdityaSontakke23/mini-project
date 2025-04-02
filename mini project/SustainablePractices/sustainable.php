<?php
$host = "localhost";
$user = "root";
$password = "root";
$database = "ClimateSync";

$conn = new mysqli($host, $user, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_GET['city'])) {
    $city = $conn->real_escape_string($_GET['city']);
    $sql = "SELECT * FROM sustainable_practices WHERE city = '$city' LIMIT 1";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo json_encode($result->fetch_assoc());
    } else {
        echo json_encode(["error" => "No data found"]);
    }
    exit;
}

$sql = "SELECT DISTINCT city FROM sustainable_practices";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sustainable Practices</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="sustainable.css">
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="text-center mb-4">Sustainable Practices by City</h2>

    <div class="mb-3">
        <label for="citySelect" class="form-label">Select a City:</label>
        <select id="citySelect" class="form-select">
            <option value="">-- Choose a City --</option>
            <?php while ($row = $result->fetch_assoc()) { ?>
                <option value="<?= htmlspecialchars($row['city']) ?>"><?= htmlspecialchars($row['city']) ?></option>
            <?php } ?>
        </select>
    </div>

    <div id="results" class="row mt-4"></div>
</div>

<script src="sustainable.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
