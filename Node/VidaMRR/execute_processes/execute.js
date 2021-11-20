const exec = require('child_process').exec;

let x = 10;
let y = 15;

exec('script.sh ' + x + ' ' + y, (err, stdout) => {
  if (err) {
    throw err;
  }

  console.log('Command executed');
  console.log(stdout);
});
