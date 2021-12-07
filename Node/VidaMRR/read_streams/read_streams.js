const fs = require('fs');

// let content = fs.readFileSync('./logs.log');
// console.log(`size: ${content.length}`);

let stream = fs.createReadStream('./logs.log', 'utf-8');

let data = '';

stream.once('data', () => {
  console.log('Initiating the stream...\n');
});

stream.on('data', (chunk) => {
  console.log(`${chunk.length} |`);
  data += chunk;
});

stream.on('end', () => {
  console.log('End of the stream...\n');
  console.log(data.length);
});
