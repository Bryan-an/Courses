// 7) Programa una función que valide si una palabra o frase dada, es un palíndromo (que se lee igual en un sentido que en otro), pe. mifuncion("Salas") devolverá true.

const isPalindrome = (text = '') => {
  if (!text) return console.warn("You didn't enter a text'");

  let reversedText = text.trim().toLowerCase().split('').reverse().join('');
  console.log(text.toLowerCase() === reversedText);
};

isPalindrome('Salas');
isPalindrome('Hello');
isPalindrome();
