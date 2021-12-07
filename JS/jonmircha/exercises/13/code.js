// 13) Programa una función que determine si un número es par o impar, pe. miFuncion(29) devolverá Impar.
const isPair = (number) =>
  number === undefined
    ? console.warn("You didn't enter a number")
    : isNaN(number)
    ? console.error('Invalid number')
    : number % 2 === 0
    ? console.info(`The number ${number} is pair`)
    : console.info(`The number ${number} is not pair`);

isPair();
isPair('3');
isPair('di34');
isPair(4);
isPair(5);
