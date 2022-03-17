// JavaScript source code
function validar(formulario) {

    var valor = parseFloat(document.getElementById('valor').value);
    if (valor < 100000) {
        alert("Escriba un valor entre 100,000 y 1,000,000");
        formulario.valor.focus();
        return false;
       
    }
    if (valor > 1000000) {
        alert("Escriba un valor entre 100,000 y 1,000,000");
        formulario.valor.focus();
        return false;
    }

}

function cal() {
    var valor = parseFloat(document.getElementById('valor').value);
    var P = valor;
    var I = 0.05;
    var N = parseFloat(document.getElementById('plazo').value);
    var S = P*(1 + I)*N;

    document.getElementById('total').value = S;

    document.getElementById("compuesto").value = P * 3.94;
    document.getElementById("mensual").value = S / N;
    var cuota = valor*0.10;
    document.getElementById('cuota').value = cuota;
}

