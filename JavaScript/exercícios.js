//02/07/2017
// dada uma lista, criar uma nova lista
// na qual cada elemento x é substituído
// pelo resultado de 2 elevado a x
var lista = [0, 1, 2, 3, 4, 5];
// retornar [1, 2, 4, 8, 16, 32]
var pow = R.curry(Math.pow);

var res = lista.map(pow(2));

// x => pow(2, x)
// é a mesma coisa que
// pow(2)

function pow(base) {
  function (expoente) {
    return Math.pow(base, expoente);
  }
}

    
console.log(res);

///////////////////////////////////////////

function primeiroGrauCurried(a) {
    return function(b) {
        return function (x) {
           return a * x + b;
        };
    };
}
