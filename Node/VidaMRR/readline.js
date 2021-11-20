const readline = require('readline');
const util = require('util');

let rl = readline.createInterface(process.stdin, process.stdout);

const person = {
  name: '',
  comments: [],
};

rl.question("What's your name?: ", (response) => {
  person.name = response;

  rl.setPrompt('Tell me a comment: ');
  rl.prompt();
});

rl.on('line', (input) => {
  if (input.trim() === 'exit') {
    let message = util.format(
      'Your name is %s and you told me: %j',
      person.name,
      person.comments
    );
    console.log(message);
    process.exit();
  }

  person.comments.push(input.trim());

  rl.setPrompt('Tell me a comment: ');
  rl.prompt();
});
