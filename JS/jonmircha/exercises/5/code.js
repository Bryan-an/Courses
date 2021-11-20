const reverseText = (text = '') =>
  !text
    ? console.warn('You did not enter a text')
    : console.info(text.split('').reverse().join(''));

reverseText('Hola Mundo');
reverseText();
