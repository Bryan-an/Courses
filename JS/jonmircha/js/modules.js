import greet, { Greet, PI, user } from './constants.js';
import { arithmetic as calc } from './arithmetic.js';

const { sum, subtract } = calc;

console.log('File modules.js');
console.log(PI, user);
// console.log(calc.sum(3, 4));
// console.log(calc.subtract(3, 4));
console.log(sum(3, 4));
console.log(subtract(3, 4));
greet();
new Greet();
