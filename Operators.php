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
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <h1>Operators</h1>
    <div class="attackers column">
        <h2>Attackers</h2>
        <div class="row">
            <?php
            foreach ($attackers as $index => $operator) {
                if ($index % 5 == 0 && $index > 0) { 
                    ?>
                    </div>
                    <div class="row">
                    <?php
                }
                ?>
                <div class="card">
                    <?= $operator['naam'] . " - " . $operator['age']; ?>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
    <div class="defenders column">
        <h2>Defenders</h2>
        <div class="row">
            <?php
            foreach ($defenders as $index => $operator) {
                if ($index % 5 == 0 && $index > 0) { 
                    ?>
                    </div>
                    <div class="row">
                    <?php
                }
                ?>
                <div class="card">
                    <?= $operator['naam'] . " - " . $operator['age']; ?>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</body>
</html>