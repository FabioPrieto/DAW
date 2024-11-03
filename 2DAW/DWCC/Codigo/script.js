function Rombo() {
    //console.log("gola");
    let n = 5;

    let espacios = " &nbsp; ", asteriscos = "*";

    for (let i = 1; i <= n; i++) {
        espacios = " &nbsp; ".repeat(n - i);
        asteriscos = "*".repeat(2 * i - 1);
        document.write(espacios + asteriscos);
        document.write("<br>");
    }

    for (let i = n - 1; i >= 1; i--) {
        espacios = " &nbsp; ".repeat(n - i);
        asteriscos = "*".repeat(2 * i - 1);
        document.write(espacios + asteriscos);
        document.write("<br>");
    }
}

Rombo();