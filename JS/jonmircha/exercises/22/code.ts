// 22) Programa una función que dado un array devuelva el número mas alto y el más bajo de dicho array, pe. miFuncion([1, 4, 5, 99, -60]) devolverá [99, -60].
const maxAndMin = (numbers: number[]): void => {
  numbers.sort();

  console.log(numbers[numbers.length - 1], numbers[0]);
};

maxAndMin([1, 4, 5, 99, -60]);
