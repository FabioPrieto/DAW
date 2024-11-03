<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remote IP and Browser Info</title>
</head>
<body>
    <h1>Remote IP and Browser Info</h1>

    <?php
    $remoteIP = $_SERVER['REMOTE_ADDR'];

    $userAgent = $_SERVER['HTTP_USER_AGENT'];

    echo "<p>Remote IP Address: $remoteIP</p>";
    echo "<p>User Agent (Browser Family): $userAgent</p>";
    ?>
</body>
</html>
