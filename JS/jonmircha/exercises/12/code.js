// 12) Programa una función que determine si un número es primo (aquel que solo es divisible por sí mismo y 1) o no, pe. miFuncion(7) devolverá true.
const isPrime = (num) => {
  if (!num) return console.warn("You didn't enter a number");
  if (isNaN(num)) return console.error('Invalid number');

  let prime = true;

  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      prime = false;
      break;
    }
  }

  return prime
    ? console.info(`The number ${num} is prime`)
    : console.info(`The number ${num} is not prime`);
};

isPrime();
isPrime('3');
isPrime('8f');
isPrime(7);
isPrime(24);
