<?php

session_start();
require_once 'connection.php';
$PDO = CONNECTION_PDO();
$id = isset($_GET['id']) ? (int) $_GET['id'] : 1;
$stmt = $PDO->prepare('SELECT * FROM operators WHERE id = ' . $id);
$stmt->execute();
$stmt = $stmt->fetch(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>

<body>
    <div class="card">
        <p><?= $stmt['naam']; ?></p>
        <p><?= $stmt['tags']; ?></p>
        <p><?= $stmt['age']; ?></p>
        <img class="kaas" src="images/<?= $stmt['organisation']; ?>.avif" alt="<?= $stmt['organisation']; ?>">
        <p><?= $stmt['bio']; ?></p>
        <img src="images/<?= $stmt['naam']; ?>.avif" alt="<?= $stmt['naam']; ?>">
    </div>
    <a href="Operators.php">Terug</a>
</body>

</html>