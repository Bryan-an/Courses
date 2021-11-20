const Person = require('./libs/person');

let pablo = new Person('Plablo');

pablo.on('speak', (message) => {
  console.log(`${pablo.name}: ${message}`);
});

pablo.emit('speak', 'Today is going to be a good day');
