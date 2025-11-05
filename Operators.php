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
            <p><?= $operator['name'] . " - " . $operator['type']; ?></p>
            <?php
        }
        ?>
    </div>
    <div class="defenders">
        <h2>Defenders</h2>
        <?php
        foreach ($defenders as $operator) {
            ?>
            <p><?= $operator['name'] . " - " . $operator['type']; ?></p>
            <?php
        }
        ?>
    </div>
</body>
</html>