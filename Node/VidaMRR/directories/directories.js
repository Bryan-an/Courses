const fs = require('fs');

// mkdir
// fs.mkdirSync('img');

// fs.mkdir('css', function (err) {
//   if (err) throw `Error: ${err}`;

//   console.log('Folder created...');
// });

// Validate if the folder exists
if (fs.existsSync('css')) {
  console.log('The folder already exists...🙁');
} else {
  fs.mkdir('css', function (err) {
    if (err) throw `Error: ${err}`;
    console.log('The folder has been created...😎');
  });
}
