const fs = require('fs');

// let files = fs.readdirSync('./');
fs.readdir('./', (error, files) => {
  if (error) throw error;
  console.log(files);

  //const file = fs.readFileSync('./file.txt', 'utf8');

  fs.readFile('./file.txt', 'utf-8', (error, file) => {
    if (error) throw error;
    console.log(file);
  });

  console.log('File content...');
});
