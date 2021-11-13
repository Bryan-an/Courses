const text = document.getElementById('text');
const result = document.getElementById('result');
const form = document.getElementById('form');

form.addEventListener('submit', (e) => {
  e.preventDefault();
  let numOfChars = text.value.trim().length;
  result.textContent = `Number of characters: ${numOfChars}`;
});
