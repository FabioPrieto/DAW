<html>
 <head>
  <title>Prueba de PHP</title>
 </head>
 <body>
    <?php
    //echo '<p>Hola Mundo</p>';
    function procesarDatos($cadena, $numero) {

        echo "<h" . $numero . ">" . $cadena . "</h" . $numero . ">";
    } 
    procesarDatos("Hola, mundo!", 2);
    
    $remoteIP = $_SERVER['REMOTE_ADDR'];

    $userAgent = $_SERVER['HTTP_USER_AGENT'];

    echo "<p>Remote IP Address: $remoteIP</p>";
    echo "<p>User Agent (Browser Family): $userAgent</p>";
    ?>
    <a href="index.html">
        <button>HTML</button>
    </a>

    
 </body>
</html>