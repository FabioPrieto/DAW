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
    $birthdate = "2003-12-14";
    $currentDate = date("Y-m-d");
    $diff = date_diff(date_create($birthdate), date_create($currentDate));
    $age = $diff->format("%Y");
    echo "Age: " . $age . " years";
    ?>
</body>
</html>