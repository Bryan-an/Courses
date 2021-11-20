const questions = [
  'What is you name?',
  'How old are you?',
  'What is your favorite programming language?',
];

const answers = [];

function question(i) {
  process.stdout.write(questions[i]);
}

process.stdin.on('data', function (data) {
  answers.push(data.toString().trim());

  if (answers.length < questions.length) {
    question(answers.length);
  } else {
    process.exit();
  }
});

question(0);
