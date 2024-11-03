// Ejer 1
function cambiarContenido(){
    titulo = document.getElementById("titulo");

    titulo.innerHTML = "<h1> adios</h1>"
}

// Ejer 2
function cambiarFoto(){
    imagen = document.getElementById("imagen")

    if(imagen.src.match("meta/2.2.1.jpg")){
        imagen.src = "meta/2.2.2.jpg";
    }else if(imagen.src.match("meta/2.2.2.jpg")){
        imagen.src = "meta/2.2.3.jpg";
    }else if(imagen.src.match("meta/2.2.3.jpg")){
        imagen.src = "meta/2.2.4.jpg";
    }else{
        imagen.src = "meta/2.2.1.jpg";
    }

}

// Ejer 4
function buenosDias(){
    console.log("Buenos días");
}

