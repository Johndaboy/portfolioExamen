<?php

use Dba\Connection;

include_once 'connection.php';
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if ($password === $confirm_password) {
        $PDO = CONNECTION_PDO();
        $stmt = $PDO->prepare("INSERT INTO users (username, email, password) VALUES (:username, :email, :password)");
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);
        $stmt->bindParam(':username', $username);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':password', $hashed_password);
        $stmt->execute();
        header("Location: login.php");
        exit();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Account registratie</title>
</head>
<body>

    <h1>Maak een account aan</h1>
    <form action="" method="POST">
        <input type="text" name="username" placeholder="Username" required><br>
        <input type="email" name="email" placeholder="Email" required><br>
        <?php
        if (isset($_POST['submit'])) {
            $password = $_POST['password'];
            $confirm_password = $_POST['confirm_password'];
            if ($password !== $confirm_password) {
                ?>
                <p style="color:red;">Wachtwoorden komen niet overeen.</p>
                <?php
            }
        }
        ?>
        <input type="password" name="password" placeholder="Password" required><br>
        <input type="password" name="confirm_password" placeholder="Confirm Password" required><br>
        <input type="submit" name="submit" value="Register">
    </form>
    
</body>
</html>