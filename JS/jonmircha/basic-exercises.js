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

// cutText('Hola Mundo', 4);
// cutText();
// cutText('Hola Hola');
// cutText('', 5);

// --------------------------------------3---------------------------------------------
const stringToArray = (text = '', separator = undefined) =>
  !text
    ? console.warn("You didn't enter a string")
    : separator === undefined
    ? console.warn("You didn't enter the separator character")
    : console.info(text.split(separator));

// stringToArray(
//   'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, explicabo dolorem nobis numquam quibusdam optio molestiae esse fugit laboriosam adipisci commodi in maiores accusantium, iusto minima sed! Minus, facilis modi.',
//   ' '
// );
// stringToArray('Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct', ',');
// stringToArray();
// stringToArray('Hello World');
// stringToArray('', '-');

// ------------------------------------4--------------------------------------------------
const repeatText = (text = '', times = undefined) => {
  if (!text) return console.warn("You didn't enter a text'");
  if (times === undefined)
    return console.warn("You didn't enter the times to repeat the text'");
  if (times === 0) return console.warn('The times number cannot be zero');
  if (Math.sign(times) === -1)
    return console.warn('The times number cannot be negative');

  for (let i = 1; i <= times; i++) console.info(`${text}, ${i}`);
};

// repeatText('Hola Mundo', 3);
// repeatText('Hola Mundo', 0);
// repeatText('Hola Mundo', -20);
// repeatText('', 20);
// repeatText('Hola Mundo');

// ----------------------------------------5-------------------------------------------
const reverseText = (text = '') =>
  !text
    ? console.warn("You didn't enter a text'")
    : console.info(text.split('').reverse().join(''));

// reverseText();
// reverseText('Hola Mundo');
// reverseText('JavaScript es un lenguaje de programación increíble');
// reverseText(
//   'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, dignissimos ullam molestias harum ipsum vitae ad, possimus deleniti nam consequuntur fuga, dolorum labore dolore vero? Rerum vel tempora eos sit!'
// );

// ----------------------------------------6----------------------------------------------
const textInString = (str = '', text = '') => {
  if (!str) return console.warn("You didn't enter the long text");
  if (!text) return console.warn("You didn't enter the word to evaluate");

  let i = 0;
  let count = 0;

  while (i !== -1) {
    i = str.indexOf(text, i);
    if (i !== -1) {
      i++;
      count++;
    }
  }

  return console.info(`The word ${text} is repeated ${count} times`);
};

// textInString();
// textInString('', 'world');
// textInString('Hello World Bye World');
// textInString(
//   'hola mundo adios mundo yolo mundo holi mundo chao mundo',
//   'mundo'
// );

// ---------------------------------7----------------------------------------
const palindrome = (word = '') => {
  if (!word) return console.warn("You didn't enter a word or phrase");

  word = word.toLowerCase();
  let reversed = word.split('').reverse().join('');

  return word === reversed
    ? console.info(
        `It is palindrome, original word ${word}, reversed word ${reversed}`
      )
    : console.info(
        `It is not palindrome, original word ${word}, reversed word ${reversed}`
      );
};

// palindrome();
// palindrome('hola Mundo');
// palindrome('SaLas');

// ------------------------------------8---------------------------------------------------
const deleteChars = (text = '', pattern = '') =>
  !text
    ? console.warn("You didn't enter a text")
    : !pattern
    ? console.warn("You didn't enter a pattern")
    : console.log(text.replace(new RegExp(pattern, 'ig'), ''));

// deleteChars();
// deleteChars('xyz1, xyz2, xyz3, xyz4 y xyz5');
// deleteChars('xyz1, xyz2, xyz3, xyz4 y xyz5', 'xyz');
// deleteChars(
//   'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos dolorem consectetur amet quis. Animi, nobis? Sapiente eveniet veniam quo quae soluta quasi veritatis aut quaerat optio quod, placeat a repellendus.',
//   'o'
// );

// -------------------------------------------9----------------------------------------------
const random = () => console.info(Math.round(Math.random() * 100) + 500);

// random();

// --------------------------------------------10-----------------------------------------------
const capicua = (num = 0) => {
  if (!num) return console.warn("You didn't enter a number");

  if (typeof num !== 'number')
    return console.error(`The entered value ${num} is not a number`);

  num = num.toString();
  let reversedNum = num.split('').reverse().join('');

  return num === reversedNum
    ? console.info(
        `It is capicua, Original number ${num}, Reversed number ${reversedNum}`
      )
    : console.info(
        `It is not capicua, Original number ${num}, Reversed number ${reversedNum}`
      );
};

// capicua();
// capicua('19');
// capicua({});
// capicua(2000);
// capicua(2002);
// capicua(18.99);
// capicua(212.212);

// -----------------------------------------11---------------------------------------------------
const factorial = (num = undefined) => {
  if (!num === undefined) return console.warn("You didn't enter a number");

  if (typeof num !== 'number')
    return console.error(`The entered value ${num} is not a number`);

  if (num === 0) return console.info(`The factorial of ${num} is 1`);

  if (Math.sign(num) === -1)
    return console.error('The number cannot be negative');

  let factorial = 1;

  for (let i = num; i > 1; i--) {
    factorial *= i;
  }

  console.info(`The factorial of ${num} is ${factorial}`);
};

// factorial();
// factorial('5');
// factorial([1, 2, 3]);
// factorial(0);
// factorial(-5);
// factorial(5);
// factorial(8);
