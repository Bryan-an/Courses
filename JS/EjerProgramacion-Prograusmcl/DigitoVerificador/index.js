/* eslint-disable no-unused-vars */
function isNumberKey(evt) {
  var charCode = evt.which ? evt.which : evt.keyCode;
  if (
    (charCode > 31 && (charCode < 48 || charCode > 57)) ||
    evt.target.value.length === 9
  )
    return false;
  return true;
}

const calculate = document.getElementById('calculate');

calculate.addEventListener('click', (e) => {
  e.preventDefault();

  let role = document.getElementById('role').value;

  if (role.length === 9) {
    calculateDigit(role);
  } else {
    const snackbar = document.getElementById('snackbar');
    snackbar.className = 'show';

    setTimeout(
      () => (snackbar.className = snackbar.className.replace('show', '')),
      3000
    );
  }
});

function calculateDigit(role) {
  const result = document.querySelector('.result__p');
  let reversedRole = role
    .split('')
    .reverse()
    .map((n) => parseInt(n, 10));

  let factor = 2;
  let sum = 0;

  for (let num of reversedRole) {
    sum += num * factor;

    factor = factor === 7 ? 2 : factor + 1;
  }

  let checkDigit = 11 - (sum % 11);

  result.textContent = `${role}-${checkDigit}`;
}
