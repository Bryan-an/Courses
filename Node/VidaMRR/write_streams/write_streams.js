const fs = require('fs');
const readline = require('readline');

let i = readline.createInterface(process.stdin, process.stdout);

i.question('What is your name? > ', (name) => {
  let stream = fs.createWriteStream(`./${name}.txt`);
  stream.write(`This said ${name} \n`);
  // fs.writeFileSync(`./${name}.txt`, `This said ${name} \n`);
  process.stdout.write('What do you want to say? \n');

  i.on('line', (said) => {
    if (said.trim() === 'exit') {
      stream.close();
      i.close();
    } else {
      stream.write(said.trim() + '\n');
      // fs.appendFileSync(`./${name}.txt`, said.trim() + '\n');
    }
  });
});
