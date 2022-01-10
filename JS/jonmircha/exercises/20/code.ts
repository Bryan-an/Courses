// 20) Programa una función que valide que un texto sea un email válido, pe. miFuncion("jonmircha@gmail.com") devolverá verdadero.
const validateEmail = (email: string): void => {
  let valid: string = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(
    email
  )
    ? "valid"
    : "invalid";

  console.log(`The email ${email} is ${valid}`);
};

validateEmail("jonmircha@gmail.com");
validateEmail("jonmirchagmail.com");
