// 18) Programa una función que dada una cadena de texto cuente el número de vocales y consonantes, pe. miFuncion("Hola Mundo") devuelva Vocales: 4, Consonantes: 5.
const countVowelsAndConsonants = (text: string): void => {
  text = text.replace(/\s/g, "");

  let vowelsCount: number = 0;
  let consonantsCount: number = 0;

  for (let i = 0; i < text.length; i++) {
    if (/^[aeiou]$/.test(text.toLowerCase().charAt(i))) {
      vowelsCount += 1;
    } else {
      consonantsCount += 1;
    }
  }

  console.info(`Vowels: ${vowelsCount} consonants: ${consonantsCount}`);
};

countVowelsAndConsonants("Hola Mundo");
