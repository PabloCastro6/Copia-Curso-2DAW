function comenzarAccion(accionARealizar){
    let texto = document.getElementById("textArea").value;
    let arrayPalabras = texto.split(" ");

    if (accionARealizar == "patrones"){
        buscarPatrones(arrayPalabras);

    } else if (accionARealizar == "palabras") {
        ordenarPatrones(arrayPalabras);

    } else {
        contarPalabras(arrayPalabras);

    }

}

function buscarPatrones(arrayPalabras) {
    const patrones = ["34", "101", "ES", "HO"];
    let contadorPatrones= [0,0,0,0];


    for(let i = 0; i<patrones.length; i++) {
        arrayPalabras.forEach(palabra => {
            if (palabra.toLocaleUpperCase().includes(patron[i]))
            contadorPatrones[i]++;
    });

    if(contadorPatrones[i] > 0) {
        resultado = resultado + `El patron ${patrones[i]} lo contienen ${patrones[i]}`
    }

};

alert(resultado);

}

function ordenarPatrones(arrayPalabras) {

   let arrayMayusculas = arrayPalabras.map(palabras => palabra.toLocaleUpperCase());
    console.log(arrayMayusculas);

    arrayPalabras.sort().reverse();


}


