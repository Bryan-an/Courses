const person = new Person('Bob');

// console.log(`My name is ${person.name}`);

person.on('speak', (message) => {
  console.log(`${person.name}: ${message}`);
});

person.emit('speak', 'Today is a great day');

// emitter.on('customEvent', (message, status) => {
//   console.log(`${status}: ${message}`);
// });

// emitter.emit('customEvent', 'Message loaded successfully', 200);
