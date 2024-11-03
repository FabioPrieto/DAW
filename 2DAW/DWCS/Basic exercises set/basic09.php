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

    $studentMarks = [
        "Pepe" => 8,
        "Pablo" => 5,
        "Borja" => 6,
        "Vicente" => 9,
        "Amanda" => 3
    ];

    $totalMarks = 0;
    $maxMark = 0;
    $failedStudents = 0;

    echo "Student Marks (Unsorted):<br>";
    foreach ($studentMarks as $student => $mark) {
        echo "$student: $mark<br>";
        
        $totalMarks += $mark;
        
        $maxMark = max($maxMark, $mark);
        
        if ($mark < 5) {
            $failedStudents++;
        }
    }

    $averageMark = $totalMarks / count($studentMarks);

    ksort($studentMarks);

    echo "<br>Student Marks (Sorted by Name):<br>";
    foreach ($studentMarks as $student => $mark) {
        echo "$student: $mark<br>";
    }

    arsort($studentMarks);

    echo "<br>Student Marks (Sorted by Descending Marks):<br>";
    foreach ($studentMarks as $student => $mark) {
        echo "$student: $mark<br>";
    }

    echo "<br>Average Mark: $averageMark<br>";
    echo "Maximum Mark: $maxMark<br>";
    echo "Number of Students Who Failed: $failedStudents<br>";
    ?>

</body>
</html>