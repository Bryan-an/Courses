// 23) Programa una función que dado un array de números devuelva un objeto con 2 arreglos en el primero almacena los números pares y en el segundo los impares, pe. miFuncion([1,2,3,4,5,6,7,8,9,0]) devolverá {pares: [2,4,6,8,0], impares: [1,3,5,7,9]}.
const oddAndEven = (numbers: number[]): void => {
  const odd: number[] = [];
  const even: number[] = [];

  for (let number of numbers) {
    number % 2 === 0 ? even.push(number) : odd.push(number);
  }

  console.log(`Even: ${even}; Odd: ${odd}`);
};

oddAndEven([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
