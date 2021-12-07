const fs = require('fs');

const file = 'test.txt';

// validate if a file exists
// if (fs.existsSync(file)) {
//   console.log('The file exists');
// } else {
//   console.log('The file does not exist');
// }

// fs.access(file, fs.constants.F_OK, (err) => {
//   if (err) {
//     console.log('The file does not exist');
//   } else {
//     console.log('The file exists');
//   }
// });

// write on a file
const content = 'This is the content of a text';

// fs.writeFileSync(file, content);
// console.log('The file was successfully written');

// asynchronous
// fs.writeFile(file, content, (err) => {
//   if (err) throw 'There was an error writing the file';

//   console.log('The file was successfully written');
// });

const additionalText = '\nAnother code line go here';

fs.appendFile(file, additionalText, (err) => {
  if (err) throw 'We could not append more text';

  console.log('More information was added...');
});
