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
// reverseText('JavaScript es un lenguaje de programaci??n incre??ble');
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
      `${degrees}??C = ${Math.round(degrees * (9 / 5) + 32)}??F`
    );
  else if (unit === "F")
    return console.info(
      `${degrees}??F = ${Math.round((degrees - 32) * (5 / 9))}??C`
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
    if (/[aeiou????????????]/i.test(letter)) {
      vowels++;
    }

    if (/[bcdfghjklmn??pqrstvwxyz]/i.test(letter)) {
      consonants++;
    }
  }

  return console.info({ text, vowels, consonants });
};

// countLetters();
// countLetters(3);
// countLetters("Hola Mundo");
// countLetters("??o??o");
// countLetters(
//   "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quis ipsa obcaecati nobis temporibus. Ut, temporibus in. Quia voluptatum culpa quaerat dolores quisquam praesentium alias! Perspiciatis omnis repellat provident dolore dolorum."
// );

// ------------------------------------------19-----------------------------------------------------
const validateName = (name = "") => {
  if (!name) return console.warn("You did not enter a name");

  if (typeof name !== "string")
    return console.error(`The entered value ${name} is not a string`);

  let expReg = /^[a-z??????????????\s]+$/gi.test(name);

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
// validatePattern("Jonathan MirCha", /^[a-z??????????????\s]+$/gi);
// validatePattern("Jonathan MirCha 19", /^[a-z??????????????\s]+$/gi);
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

// -----------------------------------------------------24----------------------------------------------
const sortArray = (arr = undefined) => {
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
    arr,
    asc: arr.map((el) => el).sort(),
    desc: arr
      .map((el) => el)
      .sort()
      .reverse(),
  });
};

// sortArray();
// sortArray("Hello");
// sortArray([]);
// sortArray([3, {}]);
// sortArray([7, 5, 7, 8, 6]);

// -----------------------------------------------25--------------------------------------------------
const removeDuplicates = (arr = undefined) => {
  if (arr === undefined)
    return console.warn("You did not enter a numbers array");

  if (!(arr instanceof Array))
    return console.error("The entered value is not an array");

  if (arr.length === 0) return console.error("The array is empty");

  if (arr.length === 1)
    return console.warn("The array must have at least two elements");

  /* return console.info({
    original: arr,
    withoutDuplicates: arr.filter(
      (value, index, self) => self.indexOf(value) === index
    ),
  }); */

  return console.info({
    original: arr,
    withoutDuplicates: [...new Set(arr)],
  });
};

// removeDuplicates();
// removeDuplicates({});
// removeDuplicates([]);
// removeDuplicates([2]);
// removeDuplicates(["x", 10, "x", "10", 10, true, true]);

// --------------------------------------------26----------------------------------------
const average = (arr = undefined) => {
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
    arr.reduce((total, num, index, arr) => {
      total += num;

      if (index === arr.length - 1) {
        return `The average of ${arr.join(" + ")} is ${total / arr.length}`;
      } else {
        return total;
      }
    })
  );
};

// average();
// average({});
// average([]);
// average([2, true]);
// average([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);

// ----------------------------------------------27----------------------------------------
class Movie {
  constructor({ id, title, director, premiere, country, genres, grade }) {
    this.id = id;
    this.title = title;
    this.director = director;
    this.premiere = premiere;
    this.country = country;
    this.genres = genres;
    this.grade = grade;

    this.validateIMDB(id);
    this.validateTitle(title);
    this.validateDirector(director);
    this.validatePremiere(premiere);
    this.validateCountry(country);
    this.validateGenres(genres);
    this.validateGrade(grade);
  }

  static get genresList() {
    return [
      "Action",
      "Adult",
      "Adventure",
      "Animation",
      "Biography",
      "Comedy",
      "Crime",
      "Documentary ",
      "Drama",
      "Family",
      "Fantasy",
      "Film Noir",
      "Game-Show",
      "History",
      "Horror",
      "Musical",
      "Music",
      "Mystery",
      "News",
      "Reality-TV",
      "Romance",
      "Sci-Fi",
      "Short",
      "Sport",
      "Talk-Show",
      "Thriller",
      "War",
      "Western",
    ];
  }

  static allowedGenres() {
    return console.log(`The allowed genres are: ${Movie.genresList.join(",")}`);
  }

  validateString(property, value) {
    if (!value) return console.warn(`${property} ${value} is empty`);

    if (typeof value !== "string")
      return console.error(`${property} "${value}" entered isn't a string`);

    return true;
  }

  validateStringLength(property, value, length) {
    if (value.length > length)
      return console.error(
        `${property} "${value}" exceeds the number of characters allowed (${length}).`
      );

    return true;
  }

  validateNumber(property, value) {
    if (!value) return console.warn(`${property} "${value}" is empty`);

    if (typeof value !== "number")
      return console.error(`${property} "${value}" entered is not a number`);

    return true;
  }

  validateArray(property, value) {
    if (!value) return console.warn(`${property} "${value}" is empty`);

    if (!(value instanceof Array))
      return console.error(`${property} "${value}" entered is not an array`);

    if (value.length === 0)
      return console.error(`${property} "${value}" doesn't have data`);

    for (let string of value) {
      if (typeof string !== "string")
        return console.error(`The value "${string}" entered, is not a string`);
    }

    return true;
  }

  validateIMDB(id) {
    if (this.validateString("IMDB id", id)) {
      if (!/^([a-z]){2}([0-9]){7}$/.test(id)) {
        return console.error(
          `IMDB id "${id}" is invalid, it must have 9 characters, the first 2 lowercase, the remaining 7 numbers`
        );
      }
    }
  }

  validateTitle(title) {
    if (this.validateString("Title", title)) {
      this.validateStringLength("Title", title, 100);
    }
  }

  validateDirector(director) {
    if (this.validateString("Director", director)) {
      this.validateStringLength("Director", director, 50);
    }
  }

  validatePremiere(premiere) {
    if (this.validateNumber("Premier", premiere)) {
      if (!/^([0-9]){4}$/.test(premiere)) {
        return console.error(
          `Premiere "${premiere}" is invalid, it must be a number of 4 digits.`
        );
      }
    }
  }

  validateCountry(country) {
    this.validateArray("Country", country);
  }

  validateGenres(genres) {
    if (this.validateArray("Genres", genres)) {
      for (let genre of genres) {
        // console.log(genre, Movie.genresList.includes(genre));
        if (!Movie.genresList.includes(genre)) {
          console.error(`Invalid genre(s) "${genres.join(",")}"`);
          Movie.allowedGenres();
          break;
        }
      }
    }
  }

  validateGrade(grade) {
    if (this.validateNumber("Grade", grade)) {
      return grade < 0 || grade > 10
        ? console.error(`The grade must be between 0 and 10`)
        : (this.grade = grade.toFixed(1));
    }
  }

  dataSheet() {
    console.info(
      `Data sheet:\nTitle: "${this.title}"\nDirector: "${
        this.director
      }"\nYear: "${this.premiere}"\nCountry: "${
        this.country
      }"\nGenres: "${this.genres.join(",")}"\nGrade: "${
        this.grade
      }"\nIMDB id: "${this.id}"`
    );
  }
}

// Movie.allowedGenres();

// const movie = new Movie({
//   id: "tt1234567",
//   title: "Movie title",
//   director: "Movie director",
//   premiere: 2020,
//   country: ["Mexico"],
//   genres: ["Comedy", "Sport"],
//   grade: 7.789,
// });

// movie.dataSheet();

const moviesData = [
  {
    id: "fd1234567",
    title: "title 1",
    director: "director 1",
    premiere: 2003,
    country: ["contry1", "contry2", "country3"],
    genres: ["Action", "Comedy", "Adult"],
    grade: 4,
  },
  {
    id: "fd1234567",
    title: "title 2",
    director: "director 2",
    premiere: 2003,
    country: ["contry1", "contry2", "country3"],
    genres: ["Action", "Comedy", "Adult"],
    grade: 10,
  },
  {
    id: "fd1234567",
    title: "title 3",
    director: "director 3",
    premiere: 2020,
    country: ["contry1", "contry2", "country3"],
    genres: ["Action", "Comedy", "Adult"],
    grade: 7,
  },
];

// moviesData.forEach((el) => new Movie(el).dataSheet());
