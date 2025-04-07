<?php
$host = 'localhost';
$user = 'root';
$pass = 'root';
$db = 'climatesync';
$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) die("Connection failed");

$manage = $_GET['manage'] ?? null;
$action = $_GET['action'] ?? null;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if ($manage === 'users') {
        if ($action === 'add') {
            $username = $_POST['username'];
            $email = $_POST['email'];
            $password = $_POST['password'];
            $conn->query("INSERT INTO users (username, email, password) VALUES ('$username', '$email', '$password')");
        } elseif ($action === 'edit') {
            $id = $_POST['id'];
            $email = $_POST['email'];
            $password = $_POST['password'];
            $conn->query("UPDATE users SET email='$email', password='$password' WHERE id=$id");
        } elseif ($action === 'delete') {
            $id = $_POST['id'];
            $conn->query("DELETE FROM users WHERE id=$id");
        }
    } elseif ($manage === 'practices') {
        if ($action === 'add') {
            $city = $_POST['city'];
            $category = $_POST['category'];
            $p1 = $_POST['practice1'];
            $d1 = $_POST['desc1'];
            $p2 = $_POST['practice2'];
            $d2 = $_POST['desc2'];
            $p3 = $_POST['practice3'];
            $d3 = $_POST['desc3'];
            $conn->query("INSERT INTO sustainable_practices (city, category, practice1, desc1, practice2, desc2, practice3, desc3)
                          VALUES ('$city', '$category', '$p1', '$d1', '$p2', '$d2', '$p3', '$d3')");
        } elseif ($action === 'update') {
            $city = $_POST['city'];
            $category = $_POST['category'];
            $p1 = $_POST['practice1'];
            $d1 = $_POST['desc1'];
            $p2 = $_POST['practice2'];
            $d2 = $_POST['desc2'];
            $p3 = $_POST['practice3'];
            $d3 = $_POST['desc3'];
            $conn->query("UPDATE sustainable_practices SET category='$category', practice1='$p1', desc1='$d1',
                          practice2='$p2', desc2='$d2', practice3='$p3', desc3='$d3' WHERE city='$city'");
        } elseif ($action === 'delete') {
            $city = $_POST['city'];
            $conn->query("DELETE FROM sustainable_practices WHERE city='$city'");
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>ClimateSync Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Modify/modify.css">
</head>
<body>
    <div class="container text-center">
        <h1 class="mb-4"><i class="bi bi-globe-americas"></i> ClimateSync Admin Panel</h1>

        <?php if (!$manage): ?>
            <div class="d-flex justify-content-center gap-4">
                <a href="modify.php?manage=users" class="btn btn-primary btn-lg">Manage Users</a>
                <a href="modify.php?manage=practices" class="btn btn-success btn-lg">Manage Sustainable Practices</a>
            </div>
        <?php else: ?>
            <div class="mb-4">
                <a href="modify.php" class="btn btn-secondary">← Back to Main</a>
            </div>

            <?php if ($manage === 'users'): ?>
                <div class="d-flex justify-content-center flex-wrap gap-3 mb-4">
                    <a href="modify.php?manage=users&action=add" class="btn btn-outline-primary">Add User</a>
                    <a href="modify.php?manage=users&action=edit" class="btn btn-outline-secondary">Edit User</a>
                    <a href="modify.php?manage=users&action=delete" class="btn btn-outline-danger">Delete User</a>
                </div>

                <?php if ($action === 'add'): ?>
                    <form method="post">
                        <input type="text" name="username" placeholder="Username" required class="form-control mb-2">
                        <input type="email" name="email" placeholder="Email" required class="form-control mb-2">
                        <input type="password" name="password" placeholder="Password" required class="form-control mb-2">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                <?php elseif ($action === 'edit'): ?>
                    <form method="post">
                        <input type="number" name="id" placeholder="User ID" required class="form-control mb-2">
                        <input type="email" name="email" placeholder="New Email" class="form-control mb-2">
                        <input type="text" name="password" placeholder="New Password" class="form-control mb-2">
                        <button type="submit" class="btn btn-secondary">Update</button>
                    </form>
                <?php elseif ($action === 'delete'): ?>
                    <form method="post">
                        <input type="number" name="id" placeholder="User ID to delete" required class="form-control mb-2">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                <?php endif; ?>

            <?php elseif ($manage === 'practices'): ?>
                <div class="d-flex justify-content-center flex-wrap gap-3 mb-4">
                    <a href="modify.php?manage=practices&action=view" class="btn btn-outline-success">View Practices</a>
                    <a href="modify.php?manage=practices&action=view_cities" class="btn btn-outline-info">View Cities</a>
                    <a href="modify.php?manage=practices&action=update" class="btn btn-outline-warning">Update City</a>
                    <a href="modify.php?manage=practices&action=delete" class="btn btn-outline-danger">Delete City</a>
                    <a href="modify.php?manage=practices&action=add" class="btn btn-outline-primary">Add City</a>
                </div>

                <?php if ($action === 'view'): ?>
                    <table class="table table-bordered">
                        <thead><tr><th>City</th><th>Practice 1</th><th>Practice 2</th><th>Practice 3</th></tr></thead>
                        <tbody>
                            <?php
                            $result = $conn->query("SELECT * FROM sustainable_practices");
                            while ($row = $result->fetch_assoc()):
                            ?>
                            <tr>
                                <td><?= $row['city'] ?></td>
                                <td><?= $row['practice1_title'] ?>: <?= $row['practice1_description'] ?></td>
                                <td><?= $row['practice2_title'] ?>: <?= $row['practice2_description'] ?></td>
                                <td><?= $row['practice3_title'] ?>: <?= $row['practice3_description'] ?></td>
                            </tr>
                            <?php endwhile; ?>
                        </tbody>
                    </table>
                <?php elseif ($action === 'view_cities'): ?>
                    <ul class="list-group">
                        <?php
                        $result = $conn->query("SELECT city FROM sustainable_practices");
                        while ($row = $result->fetch_assoc()):
                        ?>
                        <li class="list-group-item"><?= $row['city'] ?></li>
                        <?php endwhile; ?>
                    </ul>
                <?php elseif ($action === 'update' || $action === 'add'): ?>
                    <form method="post">
                        <input type="text" name="city" placeholder="City Name" required class="form-control mb-2">
                        <input type="text" name="practice1" placeholder="Practice 1" class="form-control mb-1">
                        <input type="text" name="desc1" placeholder="Description 1" class="form-control mb-2">
                        <input type="text" name="practice2" placeholder="Practice 2" class="form-control mb-1">
                        <input type="text" name="desc2" placeholder="Description 2" class="form-control mb-2">
                        <input type="text" name="practice3" placeholder="Practice 3" class="form-control mb-1">
                        <input type="text" name="desc3" placeholder="Description 3" class="form-control mb-2">
                        <button type="submit" class="btn btn-warning"><?= $action === 'update' ? 'Update' : 'Add' ?></button>
                    </form>
                <?php elseif ($action === 'delete'): ?>
                    <form method="post">
                        <input type="text" name="city" placeholder="City to Delete" class="form-control mb-2" required>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                <?php endif; ?>
            <?php endif; ?>
        <?php endif; ?>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
