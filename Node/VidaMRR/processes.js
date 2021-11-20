function param(p) {
  let index = process.argv.indexOf(p);
  // console.log(index);
  return process.argv[index + 1];
}

let name = param('--name');
let age = param('--age');

console.log(`Your name is ${name} and your age is ${age} years old`);
