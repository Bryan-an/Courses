// 21) Programa una función que dado un array numérico devuelve otro array con los números elevados al cuadrado, pe. mi_funcion([1, 4, 5]) devolverá [1, 16, 25].
const powArray = (numbers: number[]): void => {
  const results: number[] = [];

  for (let number of numbers) {
    results.push(Math.pow(number, 2));
  }

  console.log(`The results are ${results}`);
};

powArray([1, 4, 5]);
