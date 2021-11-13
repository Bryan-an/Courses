'use strict';

let valid = false;

do {
  try {
    let number = prompt('Enter a number:');

    if (number.match(/^[0-9]+$/)) {
      alert(`${number} has ${number.toString().length} digits`);
      valid = true;
    } else {
      throw new Error();
    }
  } catch (error) {
    alert('Invalid value');
  }
} while (!valid);
