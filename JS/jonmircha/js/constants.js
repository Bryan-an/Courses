export const PI = Math.PI;

export let user = 'Jon';

const password = 'qwerty';
// export default password;

const hello = () => console.log('Hello');

export default function greet() {
  console.log('Hello modules +ES6');
}

export class Greet {
  constructor() {
    console.log('Hello classes +ES6');
  }
}
