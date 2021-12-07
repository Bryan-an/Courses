// 14) Programa una función para convertir grados Celsius a Fahrenheit y viceversa, pe. miFuncion(0,"C") devolverá 32°F.
const convertTemperature = (number, measurementUnit) => {
  if (number === undefined) return console.warn("You didn't enter a number");
  if (measurementUnit === undefined)
    return console.warn("You didn't enter a measurement unit");
  if (typeof number !== 'number') return console.error('Invalid number');

  let result;
  let finalUnit;

  if (typeof measurementUnit === 'string') {
    switch (measurementUnit.toLowerCase()) {
      case 'c':
        result = number * (9 / 5) + 32;
        finalUnit = 'F';
        break;
      case 'f':
        result = (number - 32) * (5 / 9);
        finalUnit = 'C';
        break;
      default:
        return console.error('Invalid measurement unit');
    }
  } else {
    return console.error('Invalid measurement unit');
  }

  console.info(`${number} ${measurementUnit}° => ${result} ${finalUnit}°`);
};

convertTemperature();
convertTemperature(3);
convertTemperature('fdsf');
convertTemperature('3');
convertTemperature('3', 'df');
convertTemperature(2, 7);
convertTemperature(0, 'C');
convertTemperature(32, 'F');
convertTemperature(32, 'K');
