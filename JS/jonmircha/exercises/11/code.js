// 11) Programa una función que calcule el factorial de un número (El factorial de un entero positivo n, se define como el producto de todos los números enteros positivos desde 1 hasta n), pe. miFuncion(5) devolverá 120.

const factorial = (number) => {
  if (number === undefined) return console.warn("You didn't enter a number");
  if (isNaN(number)) return console.warn('Inavalid number');
  if (number < 0) return console.warn('The number cannot be negative');
  if (number === 0) return console.info(1);

  let factorial = 1;

  for (let i = 1; i <= number; i++) {
    factorial *= i;
  }

  return console.info(factorial);
};

factorial();
factorial('9fd');
factorial(0);
factorial(1);
factorial(-1);
factorial(5);
