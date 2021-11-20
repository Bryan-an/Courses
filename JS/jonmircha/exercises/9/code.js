// 9) Programa una función que obtenga un numero aleatorio entre 501 y 600.
const getRandomNumber = () =>
  console.info(Math.floor(Math.random() * (600 - 501 + 1) + 501));

getRandomNumber();
