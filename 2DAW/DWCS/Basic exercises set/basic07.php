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
    function factorialUsingFor($n) {
        $result = 1;
        for ($i = 1; $i <= $n; $i++) {
            $result *= $i;
        }
        return $result;
    }
    function factorialUsingWhile($n) {
        $result = 1;
        $i = 1;
        while ($i <= $n) {
            $result *= $i;
            $i++;
        }
        return $result;
    }
    function factorialUsingDoWhile($n) {
        $result = 1;
        $i = 1;
        do {
            $result *= $i;
            $i++;
        } while ($i <= $n);
        return $result;
    }
    $number = 5;
    $result = factorialUsingFor($number);
    echo "Factorial of $number using for loop is $result <br>";
    $result = factorialUsingWhile($number);
    echo "Factorial of $number using while loop is $result <br>";
    $result = factorialUsingDoWhile($number);
    echo "Factorial of $number using do-while loop is $result <br>"; 
    ?>
</body>
</html>