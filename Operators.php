<?php

session_start();
require_once 'connection.php';
$PDO = CONNECTION_PDO();
$stmt = $PDO->prepare("SELECT * FROM operators WHERE attacker = 1");
$stmt->execute();
$attackers = $stmt->fetchAll(PDO::FETCH_ASSOC);
$stmt = $PDO->prepare("SELECT * FROM operators WHERE attacker = 0");
$stmt->execute();
$defenders = $stmt->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Operators</h1>
    <div class="attackers">
        <h2>Attackers</h2>
        <?php
        
        foreach ($attackers as $operator) {
            ?>
            <p><?= $operator['naam'] . " - " . $operator['age']; ?></p>
            <?php
        }
        ?>
    </div>
    <div class="defenders">
        <h2>Defenders</h2>
        <?php
        foreach ($defenders as $operator) {
            ?>
            <p><?= $operator['naam'] . " - " . $operator['age']; ?></p>
            <?php
        }
        ?>
    </div>
</body>
</html>