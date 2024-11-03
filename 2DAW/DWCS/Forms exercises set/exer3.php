<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $gender = $_POST["gender"];
    $height = $_POST["height"];
    $weight = $_POST["weight"];

    // Calculate ideal weight
    if ($gender == "male") {
        $idealWeight = $height - 100;
    } else {
        $idealWeight = $height - 105;
    }

    echo "Your actual weight: " . $weight . " kg<br>";
    echo "Your ideal weight: " . $idealWeight . " kg<br>";

    if ($weight == $idealWeight) {
        echo "You're at your ideal weight!";
    } elseif ($weight > $idealWeight) {
        echo "You're above your ideal weight by " . ($weight - $idealWeight) . " kg.";
    } else {
        echo "You're below your ideal weight by " . ($idealWeight - $weight) . " kg.";
    }
}
?>
