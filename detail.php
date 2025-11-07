<?php

session_start();
require_once 'connection.php';
$PDO = CONNECTION_PDO();
$id = isset($_GET['id']) ? (int) $_GET['id'] : 1;
$stmt = $PDO->prepare('SELECT * FROM operators WHERE id = ' . $id);
$stmt->execute();
$operator = $stmt->fetch(PDO::FETCH_ASSOC);

$stmt = $PDO->prepare('SELECT * FROM wapens');
$stmt->execute();
$wapens = $stmt->fetchAll(PDO::FETCH_ASSOC);

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
        <p><?= $operator['naam']; ?></p>
        <p><?= $operator['tags']; ?></p>
        <p><?= $operator['age']; ?></p>
        <img class="kaas" src="images/<?= $operator['organisation']; ?>.avif" alt="<?= $operator['organisation']; ?>">
        <p><?= $operator['bio']; ?></p>
        <img src="images/<?= $operator['naam']; ?>.avif" alt="<?= $operator['naam']; ?>">
    </div>
    <a href="Operators.php">Terug</a>
</body>

</html>