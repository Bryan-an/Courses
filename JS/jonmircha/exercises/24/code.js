// 24) Programa una función que dado un arreglo de números devuelva un objeto con dos arreglos, el primero tendrá los numeros ordenados en forma ascendente y el segundo de forma descendiente, pe. miFuncion([7, 5,7,8,6]) devolverá { asc: [5,6,7,7,8], desc: [8,7,7,6,5] }.
var sortNumbers = function (numbers) {
    return {
        asc: numbers.sort(function (n1, n2) { return n1 - n2; }),
        desc: numbers.sort(function (n1, n2) { return n2 - n1; })
    };
};
console.log(sortNumbers([7, 5, 7, 8, 6]));
