// 16) Programa una función que devuelva el monto final después de aplicar un descuento a una cantidad dada, pe. miFuncion(1000, 20) devolverá 800.
const applyDiscount = (amount: number, discount: number): void => {
  if (amount <= 0) return console.error("The amount must be greater than zero");
  if (discount <= 0)
    return console.error("The discount must be greater than zero");

  let finalAmount = amount * (1 - discount / 100);
  console.info(`The final amount is ${finalAmount}`);
};

applyDiscount(3, 0);
applyDiscount(1000, 20);
