<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <?php

    if(isset($_GET['user']) && isset($_GET['password'])) {
        $user = $_GET['user'];
        $password = $_GET['password'];
        
        function removeVowels($string) {
            return str_replace(['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'], '', $string);
        }

        $expectedPassword = removeVowels($user);

        if($password === $expectedPassword) {
            echo '<a href="path_to_your_image_or_file.jpg" download>Click here to download</a>';
        } else {
            echo 'User or pass incorrect...';
        }
    } else {
        echo 'Please provide user and password in the URL.';
    }
    ?>
</body>
</html>