// 10) Programa una función que reciba un número y evalúe si es capicúa o no (que se lee igual en un sentido que en otro), pe. miFuncion(2002) devolverá true.
const isCapicua = (number = undefined) => {
  if (!number) return console.warn("You didn't enter a number'");
  if (isNaN(number)) return console.warn('Invalid number');

  number = number.toString();
  let reversedNumber = number.trim().split('').reverse().join('');
  console.log(number === reversedNumber);
};

isCapicua('Salas');
isCapicua();
isCapicua('2002');
isCapicua(1276);
