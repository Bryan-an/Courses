const form = document.querySelector('.coefficients');

const calculateSolution = (e) => {
  e.preventDefault();

  let a = parseInt(document.getElementById('a').value);
  let b = parseInt(document.getElementById('b').value);
  const result = document.getElementById('result');

  let x;

  if (a === 0) {
    if (b === 0) {
      x = 'There is not only one solution';
    } else {
      x = 'There is not solution';
    }
  } else {
    x = -b / a;
  }

  result.textContent = x;
};

form.addEventListener('submit', (e) => calculateSolution(e));
