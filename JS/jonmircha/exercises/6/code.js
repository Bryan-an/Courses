// 6) Programa una función para contar el número de veces que se repite una palabra en un texto largo, pe. miFuncion("hola mundo adios mundo", "mundo") devolverá 2.

const countWords = (text = '', word = '') => {
  if (!text) return console.warn("You didn't enter a text");
  if (!word) return console.warn("You didn't enter a word");

  let count = 0;
  const words = text.trim().split(' ');

  for (let w of words) {
    w === word && count++;
  }

  console.log(count);
};

countWords('Hola mundo adios mundo', 'mundo');
countWords();
countWords('');
countWords('Hola mundo');
countWords('Hola mundo', '');
