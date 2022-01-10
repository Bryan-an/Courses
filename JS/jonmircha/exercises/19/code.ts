// 19) Programa una función que valide que un texto sea un nombre válido, pe. miFuncion("Jonathan MirCha") devolverá verdadero.
const validateName = (name: string): void => {
  let valid: string = /^[a-zA-Z\s]+$/.test(name) ? "valid" : "invalid";
  console.log(`The name ${name} is ${valid}`);
};

validateName("Jonathan MirCha");
