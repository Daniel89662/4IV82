// JavaScript source code
function Intereses() {

    var valor = document.formulario1.cantidad.value;

    var result = parseInt(valor);

    var interes = result * .02;

    var total = result + interes;

    // imprimir el resultado 
    document.formulario1.cantidad1.value = "$" + total;
}

function Borrar(e) {
    document.formulario1.cantidad.value = "";
    document.formulario1.cantidad1.value = "";

}

function Comision() {
    var valor = parseInt(document.formulario1.sueldo.value);
    var total = 3 * (valor * .1);
    var totalT = valor + total;
    document.formulario1.total.value = totalT ;
}

function BorrarDos() {
    document.formulario1.sueldo.value = "";
    document.formulario1.total.value = "";
}


function Descuento() {
    var valor = parseInt(document.formulario1.compra.value);
    var total = valor * 0.15;
    var totalT = valor - total;
    document.formulario1.total1.value = totalT;

}
function BorrarTres() {
    document.formulario1.compra.value = "";
    document.formulario1.total1.value = "";
}

function Calificaciones() {
    var calif1 = parseFloat(document.formulario1.parcial1.value);
    var calif2 = parseFloat(document.formulario1.parcial2.value);
    var calif3 = parseFloat(document.formulario1.parcial3.value);
    if (calif1 == null) {
        calif1 = 0;
    }

    if (calif2 == null) {
        calif2 = 0;
    }

    if (calif3 == null) {
        calif3 = 0;
    }
    var promedio = (calif1 + calif2 + calif3) / 3;

    var examen = (parseFloat(document.formulario1.examen.value)/100)*30;
    var trabajo = (parseFloat(document.formulario1.trabajo.value)/100)*15;
    var promedio2 = (promedio / 100) * 55;
    var total = examen + trabajo + promedio2;

    document.formulario1.promedio.value = promedio;
    document.formulario1.total2.value = total;
}
function BorrarCuatro() {
    document.formulario1.promedio.value = "";
    document.formulario1.total2.value = "";
    document.formulario1.parcial1.value = "";
    document.formulario1.parcial2.value = "";
    document.formulario1.parcial3.value = "";
    document.formulario1.examen.value = "";
    document.formulario1.trabajo.value = "";
    document.formulario1.total2.value = "";

}

function Porcentaje() {
    var hombres = parseInt(document.formulario1.hombres.value);
    var mujeres = parseInt(document.formulario1.mujeres.value);
    var total = hombres + mujeres;
    var promedio1 = hombres / (total / 100);
    var promedio2 = mujeres / (total / 100);

    document.formulario1.hombres1.value = promedio1+ "%";
    document.formulario1.mujeres1.value = promedio2 + "%";
    document.formulario1.total3.value = total;
}

function BorrarCinco(e) {
    document.formulario1.hombres1.value = "";
    document.formulario1.mujeres1.value = "";
    document.formulario1.total3.value = "";
    document.formulario1.hombres.value = "";
    document.formulario1.mujeres.value = "";
}

function Edad() {
    var edad = document.formulario1.fecha.value;
    var edad1 = 2022 - edad;
    document.formulario1.edad.value = edad1 + "años";


}

function BorrarSeis() {
    document.formulario1.fecha.value = "";
    document.formulario1.edad.value = "";
}