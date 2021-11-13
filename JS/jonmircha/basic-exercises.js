// -------------------------------1------------------------------------------------------
/* function countChars(text = '') {
  if (!text) {
    console.warn("You didn't enter a string");
  } else {
    console.info(`The string "${text}" has ${text.length} chars`);
  }
} */

const countChars = (text = '') =>
  !text
    ? console.warn("You didn't enter a string")
    : console.info(`The string "${text}" has ${text.length} chars`);

// countChars();
// countChars('Hola Mundo');

// ---------------------------------2--------------------------------------------------
const cutText = (text = '', length = undefined) =>
  !text
    ? console.warn("You didn't enter a string")
    : length === undefined
    ? console.warn("You didn't enter the length to cut the text'")
    : console.log(text.slice(0, length));

cutText('Hola Mundo', 4);
cutText();
cutText('Hola Hola');
cutText('', 5);
