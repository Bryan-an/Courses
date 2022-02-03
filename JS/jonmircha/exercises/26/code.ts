// 26) Programa una función que dado un arreglo de números obtenga el promedio, pe. promedio([9,8,7,6,5,4,3,2,1,0]) devolverá 4.5.
const getAverage = (numbers: number[]): number => {
  let sum: number = 0;
  let average: number;

  numbers.forEach((num) => (sum += num));
  average = sum / numbers.length;

  return average;
};

console.log(getAverage([9, 8, 7, 6, 5, 4, 3, 2, 1, 0]));
