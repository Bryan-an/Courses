// 25) Programa una función que dado un arreglo de elementos, elimine los duplicados, pe. miFuncion(["x", 10, "x", 2, "10", 10, true, true]) devolverá ["x", 10, 2, "10", true].
const deleteDuplicates = (elements: any[]): any[] => {
  const newArray: any[] = [];

  elements.forEach((element) => {
    if (newArray.indexOf(element) === -1) {
      newArray.push(element);
    }
  });

  return newArray;
};

console.log(deleteDuplicates(["x", 10, "x", 2, "10", 10, true, true]));
