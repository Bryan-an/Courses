// -------------------------------1------------------------------------------------------
/* function countChars(text = '') {
  if (!text) {
    console.warn("You didn't enter a string");
  } else {
    console.info(`The string "${text}" has ${text.length} chars`);
  }
} */

const countChars = (text = "") =>
  !text
    ? console.warn("You didn't enter a string")
    : console.info(`The string "${text}" has ${text.length} chars`);

// countChars();
// countChars('Hola Mundo');

// ---------------------------------2--------------------------------------------------
const cutText = (text = "", length = undefined) =>
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
const stringToArray = (text = "", separator = undefined) =>
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
const repeatText = (text = "", times = undefined) => {
  if (!text) return console.warn("You didn't enter a text'");
  if (times === undefined)
    return console.warn("You didn't enter the times to repeat the text'");
  if (times === 0) return console.warn("The times number cannot be zero");
  if (Math.sign(times) === -1)
    return console.warn("The times number cannot be negative");

  for (let i = 1; i <= times; i++) console.info(`${text}, ${i}`);
};

// repeatText('Hola Mundo', 3);
// repeatText('Hola Mundo', 0);
// repeatText('Hola Mundo', -20);
// repeatText('', 20);
// repeatText('Hola Mundo');

// ----------------------------------------5-------------------------------------------
const reverseText = (text = "") =>
  !text
    ? console.warn("You didn't enter a text'")
    : console.info(text.split("").reverse().join(""));

// reverseText();
// reverseText('Hola Mundo');
// reverseText('JavaScript es un lenguaje de programación increíble');
// reverseText(
//   'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto, dignissimos ullam molestias harum ipsum vitae ad, possimus deleniti nam consequuntur fuga, dolorum labore dolore vero? Rerum vel tempora eos sit!'
// );

// ----------------------------------------6----------------------------------------------
const textInString = (str = "", text = "") => {
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
const palindrome = (word = "") => {
  if (!word) return console.warn("You didn't enter a word or phrase");

  word = word.toLowerCase();
  let reversed = word.split("").reverse().join("");

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
const deleteChars = (text = "", pattern = "") =>
  !text
    ? console.warn("You didn't enter a text")
    : !pattern
    ? console.warn("You didn't enter a pattern")
    : console.log(text.replace(new RegExp(pattern, "ig"), ""));

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

  if (typeof num !== "number")
    return console.error(`The entered value ${num} is not a number`);

  num = num.toString();
  let reversedNum = num.split("").reverse().join("");

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

  if (typeof num !== "number")
    return console.error(`The entered value ${num} is not a number`);

  if (num === 0) return console.info(`The factorial of ${num} is 1`);

  if (Math.sign(num) === -1)
    return console.error("The number cannot be negative");

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

// ---------------------------------------------12----------------------------------------
const primeNumber = (number = undefined) => {
  if (number === undefined) return console.warn("You didn't enter a number");

  if (typeof number !== "number")
    return console.error(`The entered value ${number} is not a number`);

  if (number === 0) return console.error("The number cannot be 0");

  if (number === 1) return console.error("The number cannot be 1");

  if (Math.sign(number) === -1)
    return console.error("The number cannot be negative");

  let divisible = false;

  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      divisible = true;
      break;
    }
  }

  return divisible
    ? console.log(`The number ${number} is not prime`)
    : console.log(`The number ${number} is prime`);
};

// primeNumber();
// primeNumber('320');
// primeNumber(true);
// primeNumber(0);
// primeNumber(1);
// primeNumber(-13);
// primeNumber(13);
// primeNumber(200);

// -----------------------------------------13----------------------------------------
const pairOddNumber = (num = undefined) => {
  if (num === undefined) return console.warn("You did not enter a number'");

  if (typeof num !== "number")
    return console.error(`The entered value ${num} is not a number`);

  return num % 2 === 0
    ? console.info(`The number ${num} is pair`)
    : console.info(`The number ${num} is odd`);
};

// pairOddNumber();
// pairOddNumber('23');
// pairOddNumber(-398);
// pairOddNumber(19);

// ----------------------------------------------14----------------------------------------
const convertDegrees = (degrees = undefined, unit = undefined) => {
  if (degrees === undefined)
    return console.warn("You did not enter degrees to convert");

  if (typeof degrees !== "number")
    return console.error(`The entered value ${degrees} is not a number`);

  if (unit === undefined)
    return console.warn("You did not enter the kind of degree to convert");

  if (typeof unit !== "string")
    return console.error(`The entered value ${unit} is not a string`);

  if (unit.length !== 1 || !/(C|F)/.test(unit))
    return console.warn("The unit value has not beeen recognized");

  if (unit === "C")
    return console.info(
      `${degrees}°C = ${Math.round(degrees * (9 / 5) + 32)}°F`
    );
  else if (unit === "F")
    return console.info(
      `${degrees}°F = ${Math.round((degrees - 32) * (5 / 9))}°C`
    );

  console.info("Works");
};

// convertDegrees();
// convertDegrees('2');
// convertDegrees(2);
// convertDegrees(2, true);
// convertDegrees(2, 'Hola');
// convertDegrees(2, 'E');
// convertDegrees(0, 'C');
// convertDegrees(100, 'C');
// convertDegrees(32, 'F');
// convertDegrees(100, 'F');

// --------------------------------------15-------------------------------------------
const convertBinaryDecimal = (number = undefined, base = undefined) => {
  if (number === undefined)
    return console.warn("You did not enter a number to convert");

  if (typeof number !== "number")
    return console.error(`The entered value ${number} is not a number`);

  if (base === undefined)
    return console.warn("You did not enter the base to convert");

  if (typeof base !== "number")
    return console.error(`The entered value ${base} is not a number`);

  if (base === 2) {
    return console.info(
      `${number} base ${base} = ${parseInt(number, base)} base 10`
    );
  } else if (base === 10) {
    return console.info(
      `${number} base ${base} = ${number.toString(2)} base 2`
    );
  } else {
    return console.error("The kind of base to convert is invalid");
  }
};

// convertBinaryDecimal();
// convertBinaryDecimal("2");
// convertBinaryDecimal(100);
// convertBinaryDecimal(100, "2");
// convertBinaryDecimal(100, 2);
// convertBinaryDecimal(1110010, 2);
// convertBinaryDecimal(4, 10);
// convertBinaryDecimal(114, 10);
// convertBinaryDecimal(114, 3);

// --------------------------------------------15----------------------------------------
const applyDiscount = (amount = undefined, discount = 0) => {
  if (amount === undefined) return console.warn("You did not enter the amount");

  if (typeof amount !== "number")
    return console.error(`The entered value ${amount}, is not a number`);

  if (amount === 0) return console.error("The amount must not be zero");

  if (Math.sign(amount) === -1)
    return console.error("The amount must not be negative");

  if (typeof discount !== "number")
    return console.error(`The entered value ${discount}, is not a number`);

  if (Math.sign(discount) === -1)
    return console.error("The discount must not be negative");

  return console.info(
    `$${amount} - ${discount}% = $${amount - (amount * discount) / 100}`
  );
};

// applyDiscount();
// applyDiscount("200");
// applyDiscount(0);
// applyDiscount(-1000);
// applyDiscount(1000, "20");
// applyDiscount(1000, -20);
// applyDiscount(1000, -20);
// applyDiscount(1000);
// applyDiscount(1000, 25);

// ---------------------------------------------17--------------------------------------
const calculateYears = (date = undefined) => {
  if (date === undefined) return console.warn("You did not enter the date");

  if (!(date instanceof Date))
    return console.warn(`The entered value is not a valid date`);

  let todayMinusDate = new Date().getTime() - date.getTime();
  let yearsInMS = 1000 * 60 * 60 * 24 * 365;
  let humanYears = Math.floor(todayMinusDate / yearsInMS);

  return Math.sign(humanYears) === -1
    ? console.info(
        `There are ${Math.abs(humanYears)} years to go to ${date.getFullYear()}`
      )
    : Math.sign(humanYears) === 1
    ? console.info(
        `${humanYears} years have passed since ${date.getFullYear()}`
      )
    : console.info(`We are in the current year ${date.getFullYear()}`);
};

// calculateYears();
// calculateYears({});
// calculateYears(false);
// calculateYears(new Date());
// calculateYears(new Date(1984, 4, 23));
// calculateYears(new Date(1884, 4, 23));
// calculateYears(new Date(2084, 4, 23));

// -----------------------------------------18---------------------------------------------
const countLetters = (text = "") => {
  if (!text) return console.warn("You did not enter a string");

  if (typeof text !== "string")
    return console.error(`The entered value ${text} is not a string`);

  let vowels = 0;
  let consonants = 0;

  for (let letter of text) {
    if (/[aeiouáéíóúü]/i.test(letter)) {
      vowels++;
    }

    if (/[bcdfghjklmnñpqrstvwxyz]/i.test(letter)) {
      consonants++;
    }
  }

  return console.info({ text, vowels, consonants });
};

// countLetters();
// countLetters(3);
// countLetters("Hola Mundo");
// countLetters("Ñoño");
// countLetters(
//   "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quis ipsa obcaecati nobis temporibus. Ut, temporibus in. Quia voluptatum culpa quaerat dolores quisquam praesentium alias! Perspiciatis omnis repellat provident dolore dolorum."
// );

// ------------------------------------------19-----------------------------------------------------
const validateName = (name = "") => {
  if (!name) return console.warn("You did not enter a name");

  if (typeof name !== "string")
    return console.error(`The entered value ${name} is not a string`);

  let expReg = /^[a-zñáéíóúü\s]+$/gi.test(name);

  return expReg
    ? console.info(`${name}, si a valid name`)
    : console.warn(`${name}, is a inavalid name`);
};

// validateName();
// validateName(3);
// validateName("Jonathan MirCha");
// validateName("Jonathan MirCha, 35");
// validateName("Jonathan MirCha,");

// -----------------------------------------------20--------------------------------------------------
const validateEmail = (email = "") => {
  if (!email) return console.warn("You did not enter an email");

  if (typeof email !== "string")
    return console.error(`The entered value ${email} is not a string`);

  let expReg =
    /^[a-z0-9]+(\.[_a-z0-9]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,15})$/i.test(
      email
    );

  return expReg
    ? console.info(`${email} is a valid email`)
    : console.warn(`${email} is not a valid email`);
};

// validateEmail();
// validateEmail(34);
// validateEmail("jon,mir,cha@gmail");
// validateEmail("jonmircha@gmail.com");

// Merge 19, 20
const validatePattern = (text = "", pattern = undefined) => {
  if (!text) return console.warn("You did not enter an string to evaluate");

  if (typeof text !== "string")
    return console.error(`The entered value ${text} is not a string`);

  if (pattern === undefined)
    return console.warn("You did not enter an pattern to evaluate");

  if (!(pattern instanceof RegExp))
    return console.error(
      `The entered value ${pattern} is not a regular expression`
    );

  let expReg = pattern.test(text);

  return expReg
    ? console.info(`${text} matches the entered pattern`)
    : console.warn(`${text} does not matches the entered pattern`);
};

// validatePattern();
// validatePattern({});
// validatePattern("Hello World");
// validatePattern("Hello World", "hello");
// validatePattern("Hello World", [1, 2, 3]);
// validatePattern("Jonathan MirCha", /^[a-zñáéíóúü\s]+$/gi);
// validatePattern("Jonathan MirCha 19", /^[a-zñáéíóúü\s]+$/gi);
// validatePattern(
//   "jonmircha@gmail",
//   new RegExp(
//     "^[a-z0-9]+(\\.[_a-z0-9]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,15})$",
//     "i"
//   )
// );
// validatePattern(
//   "jonmircha@gmail.com",
//   new RegExp(
//     "^[a-z0-9]+(\\.[_a-z0-9]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,15})$",
//     "i"
//   )
// );

// -------------------------------------------------21--------------------------------------------
const returnSqrt = (arr = undefined) => {
  if (arr === undefined)
    return console.warn("You did not enter a numbers array");

  if (!(arr instanceof Array))
    return console.error("The entered value is not an array");

  if (arr.length === 0) return console.error("The array is empty");

  for (let num of arr) {
    if (typeof num !== "number")
      return console.error(`The entered value ${num} is not a number`);
  }

  const newArr = arr.map((el) => el * el);

  return console.info(`Original array: ${arr},\nSqrt array: ${newArr}`);
};

// returnSqrt();
// returnSqrt(true);
// returnSqrt({});
// returnSqrt([]);
// returnSqrt([1, "3", 4, {}]);
// returnSqrt([1, 4, {}]);
// returnSqrt([1, 4, 8]);

// -----------------------------------------------22--------------------------------------
const arrayMinMax = (arr = undefined) => {
  if (arr === undefined)
    return console.warn("You did not enter a numbers array");

  if (!(arr instanceof Array))
    return console.error("The entered value is not an array");

  if (arr.length === 0) return console.error("The array is empty");

  for (let num of arr) {
    if (typeof num !== "number")
      return console.error(`The entered value ${num} is not a number`);
  }

  return console.info(
    `Original array: ${arr}\nHigher value: ${Math.max(
      ...arr
    )},\nLower value: ${Math.min(...arr)}`
  );
};

// arrayMinMax();
// arrayMinMax(false);
// arrayMinMax([]);
// arrayMinMax([2, 3, true]);
// arrayMinMax([1, 4, 5, 99, -60]);

// ----------------------------------------------23-----------------------------------------
const separatePairOdd = (arr = undefined) => {
  if (arr === undefined)
    return console.warn("You did not enter a numbers array");

  if (!(arr instanceof Array))
    return console.error("The entered value is not an array");

  if (arr.length === 0) return console.error("The array is empty");

  for (let num of arr) {
    if (typeof num !== "number")
      return console.error(`The entered value ${num} is not a number`);
  }

  return console.info({
    pairs: arr.filter((num) => num % 2 === 0),
    odds: arr.filter((num) => num % 2 === 1),
  });
};

// separatePairOdd();
// separatePairOdd("hello");
// separatePairOdd([]);
// separatePairOdd([2, 4, "j"]);
// separatePairOdd([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
