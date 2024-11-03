<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $rows = 10;
    $colums = 10;

    echo "<table border='1'>";
    echo "<tr><th>*</th>";

    for($i = 1; $i<= $colums;$i++){
        echo "<th>" . $i . "</th>";
    }
    echo "</tr>";

    for($i = 1; $i <= $rows; $i++){
        echo "<tr><th>" . $i . "</th>";
        for($j = 1; $j <= $colums; $j++){
            echo "<td>" . ($i * $j) . "</td>";
        }
        echo "</tr>";
    }

    echo "</table>"

    ?>
</body>
</html>