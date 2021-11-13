function repeatString(text, times) {
  let newString = '';

  for (let i = 1; i <= times; i++) {
    newString += text;

    if (i !== times) {
      newString += ' ';
    }
  }

  return newString;
}

console.log(repeatString('Hola Mundo', 3));
