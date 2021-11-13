const serialized = '{ "prop1": "Pedro", "prop2": "Jorge" }';
const deserialized = JSON.parse(serialized);

console.log(deserialized.prop1);

while (serialized) {
  console.log('HEllo');
}
