<?php

session_start();

if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $PDO = include_once 'connection.php';
    $stmt = $PDO->prepare("SELECT password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $user = $stmt->fetch();
    $hashed_password = $user['password'];
    if ($user) {
        if (password_verify($password, $hashed_password)) {
            $_SESSION['user'] = $user['id'];
            header("Location: dashboard.php");
            exit();
        }
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Account login</title>
</head>
<body>
    
    <h1>Login op je account</h1>
    <form action="" method="POST">
        <?php
        if (isset($_POST['submit'])) {
            if ($user) {
                if (!password_verify($password, $hashed_password)) {
                    ?>
                    <p style="color:red;">Ongeldig wachtwoord.</p>
                    <?php
                }
            } else {
                ?>
                <p style="color:red;">Gebruiker niet gevonden.</p>
                <?php
            }
        }
        ?>
        <input type="text" name="username" placeholder="Username" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <input type="submit" name="submit" value="Login">
    </form>

</body>
</html>