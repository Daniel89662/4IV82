//Problema 1

function invertir(){
    //obtener las palabras
    var palabras = document.querySelector('#p1-input').value;
    //dividir 
    var cadena = palabras.split(' ').reverse();

    var imprimir = '';
    //recorrer 1 por 1 hasta que i != cadena y volearlas

    cadena.forEach(function (palabra, i) {

        if (i != 0 || i != cadena.length) {
            imprimir += ' ';
            imprimir += palabra;

        }
       
    
    });

    var resultado = '';

    resultado = imprimir;

    //imprimir el resultado
    document.querySelector('#p1-output').textContent = resultado;
}
//Problema 2

function calcular() {
    //obtener las xN del vector

    var x1 = parseInt(document.getElementById('p2-x1').value);
    var x2 = parseInt(document.getElementById('p2-x2').value);
    var x3 = parseInt(document.getElementById('p2-x3').value);
    var x4 = parseInt(document.getElementById('p2-x4').value);
    var x5 = parseInt(document.getElementById('p2-x5').value);

    //obtener las yN del vector
    var y1 = parseInt(document.getElementById('p2-y1').value);
    var y2 = parseInt(document.getElementById('p2-y2').value);
    var y3 = parseInt(document.getElementById('p2-y3').value);
    var y4 = parseInt(document.getElementById('p2-y4').value);
    var y5 = parseInt(document.getElementById('p2-y5').value);

    //calcular

    resultado = (x1 * y1) + (x2 * y2) + (x3 * y3) + (x4 * y4) + (x5 * y5);

    document.getElementById('p2-output').innerHTML = resultado




}

//problema 3

function proble3(){

    //definir un alfabeto
    var alfabeto = ['A', 'B', 'C', 'D', 'E', 
        'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 
        'N', 'Ñ', 'O', 'P', 'Q', 'R', 'S', 'T',
        'U', 'V', 'W', 'X', 'Y', 'Z'];

    //vamos a obtener la entrada de los datos
    var p3_input = document.querySelector('#p3-input').value;

    var p3_palabras = p3_input.split(',');

    //tengo que eliminar los espacios

    p3_palabras = p3_palabras.map(function (palabra){
        //crear una expresion que me recupere las palabras
        return palabra.replace(/\s/g, '').toUpperCase();
    });

    //tengo que calcular cuantos caracteres unicos hay
    var p3_res = '';
    
    p3_palabras.forEach(function (palabra, i){
        //separar las palabras actuales del array que 
        //contiene cada letra de dicha palabra
        var letras_unicas = [];
        var palabra_array = palabra.split('');

        //iteracion
        alfabeto.forEach(function (letra, J){
            //itero la palabra
            palabra_array.forEach(function (letras_palabras, k){

                //comprobar que la letra este dentro del alfabeto
                if(letras_palabras == letra){
                    //si la letra no la hemos contado
                    //la agregamos a un array para contar
                    //las letras unicas
                    if(letras_unicas.indexOf(letra)<0){
                        letras_unicas.push(letra);
                    }
                }
            });
        });
        p3_res += 'Palabra: ' + palabra + ' = ' + letras_unicas.length + '\n';
    });
    document.querySelector('#p3-output').textContent = p3_res
}