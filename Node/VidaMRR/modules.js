const path = require('path');
const util = require('util');
const v8 = require('v8');

// console.log(path.join(__dirname, 'www', 'img', 'home', 'uploads'));
let name = 'Marcos';
let age = 15;
let text = util.format('Hello %s, you are %d years old', name, age);

console.log(v8.getHeapStatistics());
