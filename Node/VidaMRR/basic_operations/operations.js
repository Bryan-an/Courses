const fs = require('fs');

// synchronous renaming
// fs.renameSync('./test.txt', './config.txt');

// asynchronous renaming
// fs.rename('./config.txt', './test.txt', (err) => {
//   if (err) throw err;

//   console.log('The file has been renamed successfully');
// });

// move a file
// fs.rename('./test.txt', './src/test.txt', (err) => {
//   if (err) throw err;

//   console.log('The file has been moved successfully');
// });

// delete file
fs.unlinkSync('./src/test.txt');
console.log('The file has been deleted successfully');
