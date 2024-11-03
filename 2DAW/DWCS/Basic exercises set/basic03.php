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
    $string1 = "afs"; 
    $string2 = "gasdg";
    $string3 = "asccqawe";

    if((strlen($string1) > strlen($string2)) and (strlen($string2) > strlen($string3))){
        echo $string1 . ">" . $string2 . ">" . $string3;
    }else if ((strlen($string1) > strlen($string3)) and (strlen($string3) > strlen($string2))) {
        echo $string1 . ">" . $string3 . ">" . $string2;
    }else if ((strlen($string2) > strlen($string1)) and (strlen($string1) > strlen($string3))){
        echo $string2 . ">" . $string1 . ">" . $string3;
    }else if ((strlen($string2) > strlen($string3)) and (strlen($string3) > strlen($string1))){
        echo $string2 . ">" . $string3 . ">" . $string1;
    }else if ((strlen($string3) > strlen($string1)) and (strlen($string1) > strlen($string2))){
        echo $string3 . ">" . $string1 . ">" . $string2;
    }else if ((strlen($string3) > strlen($string2)) and (strlen($string2) > strlen($string1))){
        echo $string3 . ">" . $string2 . ">" . $string1;
    }
    ?>
</body>
</html>