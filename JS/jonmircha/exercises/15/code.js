/* eslint-disable no-case-declarations */
// 15) Programa una función para convertir números de base binaria a decimal y viceversa, pe. miFuncion(100,2) devolverá 4 base 10.
const convertDecimalBinaryNumber = (number, base) => {
  if (number === undefined) return console.warn("You did not enter a number");
  if (base === undefined) return console.warn("You did not enter the base");
  if (typeof number !== "number") return console.error("Invalid number");
  if (typeof base !== "number") return console.error("Invalid base");
  if (!(number + "").match(/^[0-9]+$/)) return console.error("Invalid number");

  switch (base) {
    case 2:
      const digits = number
        .toString()
        .split("")
        .map((strNumber) => parseInt(strNumber, 10));
      let decimalValue = 0;

      for (let digit of digits) {
        decimalValue = decimalValue * 2 + digit;
      }

      console.info(`${decimalValue} base 10`);
      break;
    case 10:
      let binaryValue = "";

      while (true) {
        let result = number / 2;

        if (result % 1 !== 0) {
          number = Math.trunc(result);
          binaryValue += "1";
        } else {
          number = result;
          binaryValue += "0";
        }

        if (Math.trunc(result) === 0) break;
      }

      console.info(`${binaryValue.split("").reverse().join("")} base 2`);
      break;
    default:
      console.error("Invalid base");
      break;
  }
};

// convertDecimalBinaryNumber();
// convertDecimalBinaryNumber(100);
// convertDecimalBinaryNumber("100", 2);
// convertDecimalBinaryNumber(100, "2");
// convertDecimalBinaryNumber("100", "2");
// convertDecimalBinaryNumber("adf", 2);
// convertDecimalBinaryNumber(100.2, 2);
// convertDecimalBinaryNumber(100, 2.2);
// convertDecimalBinaryNumber(100.2, 2.3);
// convertDecimalBinaryNumber(100, 3);
// convertDecimalBinaryNumber(100, 4);
// convertDecimalBinaryNumber(13, 10);
convertDecimalBinaryNumber(1101, 2);
