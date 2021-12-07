const form = document.querySelector('.form');
const row = document.getElementById('row');
const column = document.getElementById('column');
const result = document.getElementById('result');
const snackbar = document.getElementById('snackbar');
let timeout = null;

form.addEventListener('submit', (e) => {
  e.preventDefault();
  let rowValue = row.value;
  let columnValue = column.value;

  if (!/^[1-8]$/.test(rowValue) || !/^[1-8]$/.test(columnValue)) {
    showSnackbar();
    return;
  }

  calculatePossibleFinalCoordinates(parseInt(rowValue), parseInt(columnValue));
});

function showSnackbar() {
  snackbar.className = '';
  clearTimeout(timeout);
  snackbar.className = 'show';
  timeout = setTimeout(() => (snackbar.className = ''), 3000);
}

function calculatePossibleFinalCoordinates(row, column) {
  const twoSteps = [2, -2];
  const oneStep = [1, -1];
  const possibleFinalCoordinates = [];

  for (let i = 0; i < twoSteps.length; i++) {
    for (let j = 0; j < oneStep.length; j++) {
      let finalPosition = move([row, column], [twoSteps[i], oneStep[j]]);
      if (finalPosition) {
        possibleFinalCoordinates.push(finalPosition);
      }

      finalPosition = move([row, column], [oneStep[j], twoSteps[i]]);
      if (finalPosition) {
        possibleFinalCoordinates.push(finalPosition);
      }
    }
  }

  showResult(possibleFinalCoordinates);
}

function move([initRow, initColumn], [rowSteps, columnSteps]) {
  let finalRow = initRow + rowSteps;
  let finalColumn = initColumn + columnSteps;

  if (finalRow >= 1 && finalRow <= 8 && finalColumn >= 1 && finalColumn <= 8)
    return [finalRow, finalColumn];

  return null;
}

function showResult(possibleFinalCoordinates) {
  const fragment = document.createDocumentFragment();

  possibleFinalCoordinates.forEach(([row, column]) => {
    const finalCoordinate = document.createElement('p');
    finalCoordinate.innerText = `${row} - ${column}`;
    fragment.append(finalCoordinate);
  });

  result.innerHTML = '<h3>Result:</h3>';
  result.appendChild(fragment);
}
