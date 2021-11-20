const fs = require('fs');

// let files = fs.readdirSync('./');
fs.readdir('./', (error, files) => {
  if (error) throw error;
  console.log(files);
});
