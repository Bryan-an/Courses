'use strict';

// ---------------------------------------Modules----------------------------------

// ---------------------------anonymous self-executing function---------------------------

// (function () {
//   console.log('My first IIFE');
// })();

// (function (d, w, c) {
//   console.log('My socond IIFE');
//   console.log(d);
//   console.log(w);
//   c.log('This is a console.log');
// })(document, window, console);

// //Forms to write anonymous self-executing functions
// //Clasic
// (function () {
//   console.log('Clasic version');
// })();

// //Crockford (JavaScript The Good Parts) envolve all in parentesis
// (function () {
//   console.log('Crockford version');
// })();

// //Unary
// +(function () {
//   console.log('Unary version');
// })();

// //Facebook
// !(function () {
//   console.log('Facebook version');
// })();

// ----------------------------------Regular expressions---------------------------------

/* 
Regular Expressions
They are a sequence of characters that form a search pattern, 
mainly used for searching for patterns of character strings. 
*/

// let myString =
//   'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Beatae obcaecati molestiae aliquam rem ex minima fugiat vel aperiam temporibus eaque, do quisquam veniam iusto, voluptatem neque id molestias, quae nemo. lorem';

// // let regExp = new RegExp('lorem', 'gi');

// // console.log(regExp.test(myString));
// // console.log(regExp.exec(myString));

// let regExp2 = /lorem{2,}/gi;
// console.log(regExp2.test(myString));
// console.log(regExp2.exec(myString));

// --------------------------------alert, confirm, prompt-------------------------------

// console.log(window);
// // alert('Hello, this is an alert');
// // confirm('Hello, this is a confirm');
// // prompt('Hello, this is a prompt and it let the user enter a value');

// let myAlert = alert('Hello, this is an alert');
// let myConfirm = confirm('Hello, this is a confirm');
// let myPrompt = prompt(
//   'Hello, this is a prompt and it let the user enter a value'
// );

// console.log(myAlert);
// console.log(myConfirm);
// console.log(myPrompt);

// -----------------------------------short circuit operators---------------------------

/*
Cortocircuito OR - cuando el valor de la izquierda en la
expresión siempre pueda validar a true, es el valor que
se cargará por defecto

Cortocircuito AND - cuando el valor de la izquierda en
la expresión siempre pueda validar a false, es el valor 
que se cargará por defecto
*/
// function greet(name) {
//   name = name || 'Unknown';
//   console.log(`Hello ${name}`);
// }

// greet('Jon');
// greet();

// console.log('string' || 'Right value');
// console.log(19 || 'Right value');
// console.log(true || 'Right value');
// console.log([] || 'Right value');
// console.log({} || 'Right value');
// console.log(false || 'Right value');
// console.log(null || 'Right value');
// console.log(undefined || 'Right value');
// console.log('' || 'Right value');
// console.log(-2 || 'Right value');
// console.log(0 || 'Right value');

// console.log(false && 'Right value');
// console.log(null && 'Right value');
// console.log(undefined && 'Right value');
// console.log('' && 'Right value');
// console.log(-2 && 'Right value');
// console.log(0 && 'Right value');

// console.log('string' && 'Right value');
// console.log(19 && 'Right value');
// console.log(true && 'Right value');
// console.log([] && 'Right value');
// console.log({} && 'Right value');

// ------------------------------------Math Object---------------------------------------

// console.log(Math);
// console.log(Math.PI);
// console.log(Math.abs(-7.8));
// console.log(Math.ceil(7.2));
// console.log(Math.floor(7.8));
// console.log(Math.round(7.49));
// console.log(Math.sqrt(81));
// console.log(Math.pow(2, 5));
// console.log(Math.sign(-0.3));
// console.log(Math.random());
// let num;
// let count = 0;

// do {
//   num = Math.round(Math.random() * 1000);
//   count++;
//   if (count === 250000) {
//     break;
//   }
// } while (num !== 1000);

// console.log(num);
// console.log(count);

// ----------------------------------Date object--------------------------------------

// console.log(Date());

// let date = new Date();
// console.log(date);
// // month day
// console.log(date.getDate());
// // week day  S M T W T F S -> 0 1 2 3 4 5 6
// console.log(date.getDay());
// // Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec -> 0 1 2 3 4 5 6 7 8 9 10 11
// console.log(date.getMonth());
// // year completed
// console.log(date.getFullYear());
// console.log(date.getHours());
// console.log(date.getMinutes());
// console.log(date.getSeconds());
// console.log(date.getMilliseconds());
// console.log(date.toString());
// console.log(date.toDateString());
// console.log(date.toLocaleString());
// console.log(date.toLocaleDateString());
// console.log(date.toLocaleTimeString());
// console.log(date.getTimezoneOffset());
// console.log(date.getUTCDate());
// console.log(date.getUTCHours());
// console.log(Date.now());
// let myBirthday = new Date(2001, 2, 30);
// console.log(myBirthday);

// ---------------------------------Console Object------------------------------------

// console.log(console);
// console.error('This is an error');
// console.warn('This is a warning');
// console.info('This is an info message');
// console.log('This is a log of what have it happened in our application');

// let $name = 'Jon';
// let lastName = 'Mircha';
// let age = 35;

// console.log($name);
// console.log(lastName);
// console.log(age);
// console.log($name, lastName, age);
// console.log(`Hello my name is ${$name} ${lastName} and my age is ${age}`);
// console.log(
//   'Hello my name is %s %s and my age is %d years',
//   $name,
//   lastName,
//   age
// );
// console.clear();
// console.log(window);
// console.log(document);
// console.dir(window);
// console.dir(document);
// console.clear();

// console.group('Courses from @jonmircha in YouTube');
// console.log('JavaScript Course');
// console.log('Node.js Course');
// console.log('PWAs Course');
// console.log('Flexbox Course');
// console.log('Web Design and programming Course');
// console.groupEnd();

// console.groupCollapsed('Courses from @jonmircha in YouTube');
// console.log('JavaScript Course');
// console.log('Node.js Course');
// console.log('PWAs Course');
// console.log('Flexbox Course');
// console.log('Web Design and programming Course');
// console.groupEnd();
// console.clear();
// console.log(console);
// console.table(Object.entries(console).sort());

// const numbers = [1, 2, 3, 4, 5];
// const vowels = ['a', 'e', 'i', 'o', 'u'];

// console.table([numbers, vowels]);

// const dog = {
//   name: 'Boni',
//   breed: 'Boxer',
//   color: 'brown',
// };
// console.table(dog);
// console.clear();

// console.time('How long does my code take?');
// const array = Array(1000000);

// for (let i = 0; i < array.length; i++) {
//   array[i] = i;
// }

// console.timeEnd('How long does my code take?');
// //console.log(array);

// console.clear();

// for (let i = 0; i <= 100; i++) {
//   console.count('for code');
//   console.log(i);
// }

// console.clear();

// let x = 3;
// let y = 2;
// let testXY = 'X is expected to always be less than Y';

// console.assert(x < y, { x, y, testXY });

// ------------------------------Clases and inheritance-------------------------------

// class Animal {
//   // The constructor is a special method that is executed when instantiating a class.
//   constructor(name, gender) {
//     this.name = name;
//     this.gender = gender;
//   }

//   // Methods
//   sound() {
//     console.log(`I make sounds because I'm live`);
//   }

//   greet() {
//     console.log(`Hello, my name is ${this.name}`);
//   }
// }

// class Dog extends Animal {
//   constructor(name, gender, size) {
//     // The super method calls to the parent class constructor
//     super(name, gender);
//     this.size = size;
//     this.breed = null;
//   }

//   sound() {
//     console.log("I'm a dog, and my sound is a bark");
//   }

//   bark() {
//     console.log('woof woof!!!');
//   }

//   // A static method can be executed without instantiating the class
//   static whatAreYou() {
//     console.log('The dogs are mammal animals');
//   }

//   //Setters and getters
//   get getBreed() {
//     return this.breed;
//   }

//   /**
//    * @param {string} breed
//    */
//   set setBreed(breed) {
//     this.breed = breed;
//   }
// }

// Dog.whatAreYou();

// const mimi = new Animal('Mimi', 'Female');
// const scooby = new Dog('Scooby', 'Male', 'Giant');

// console.log(mimi);
// mimi.greet();
// mimi.sound();
// console.log(scooby);
// scooby.greet();
// scooby.sound();
// scooby.bark();
// console.log(scooby.getBreed);
// scooby.setBreed = 'Great Dane';
// console.log(scooby.getBreed);

// -----------------------------------Prototypes-------------------------------------

// function Animal(name, gender) {
//   this.name = name;
//   this.gender = gender;
// }

// Animal.prototype.sound = function () {
//   console.log(`I make sounds because I'm live`);
// };

// Animal.prototype.greet = function () {
//   console.log(`Hello, my name is ${this.name}`);
// };

// // Prototypical inheritance
// function Dog(name, gender, size) {
//   this.super = Animal;
//   this.super(name, gender);
//   this.size = size;
// }

// //Dog is extending Animal
// Dog.prototype = new Animal();
// Dog.prototype.constructor = Dog;

// //Overriding methods from parent prototype in the child
// Dog.prototype.sound = function () {
//   console.log("I'm a dog, and my sound is a bark");
// };

// Dog.prototype.bark = function () {
//   console.log('woof woof!!!');
// };

// const snoopy = new Dog('Snoopy', 'Male', 'Medium');
// const lolaBunny = new Animal('Lola Bunny', 'Female');

// console.log(snoopy);
// console.log(lolaBunny);

// snoopy.sound();
// snoopy.greet();
// snoopy.bark();

// lolaBunny.sound();
// lolaBunny.greet();
