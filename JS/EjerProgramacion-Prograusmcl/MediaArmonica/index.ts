const numbersQuantityInput: HTMLInputElement = document.getElementById(
  "numbers-amount"
) as HTMLInputElement;
const numbersContainer: HTMLDivElement = document.getElementById(
  "numbers-container"
) as HTMLDivElement;
const form: HTMLFormElement = document.getElementById(
  "form"
) as HTMLFormElement;
const result: HTMLHeadingElement = document.getElementById(
  "result"
) as HTMLHeadingElement;

let numbersAmount: number = 1;

numbersQuantityInput.addEventListener("change", () => {
  numbersAmount = parseInt(numbersQuantityInput.value);

  numbersContainer.innerHTML = "";
  const numbersFragment: DocumentFragment = document.createDocumentFragment();

  for (let i = 1; i <= numbersAmount; i++) {
    const numberContainer: HTMLDivElement = document.createElement("div");
    const numberLabel: HTMLLabelElement = document.createElement("label");
    const numberInput: HTMLInputElement = document.createElement("input");

    numbersContainer.classList.add("number-container");

    numberLabel.innerText = `n${i}: `;

    numberInput.type = "text";
    numberInput.name = `n${i}`;
    numberInput.id = `n${i}`;
    numberInput.required = true;
    numberInput.pattern = "^-?\\d+(\\.\\d{1,2})?$";
    numberInput.title = "Enter a real number";

    numberLabel.appendChild(numberInput);
    numberContainer.appendChild(numberLabel);
    numbersFragment.appendChild(numberContainer);
  }

  numbersContainer.appendChild(numbersFragment);
});

form.addEventListener("submit", (e) => {
  e.preventDefault();

  let n: number = parseFloat(numbersQuantityInput.value);
  let denominator: number = 0;

  for (let i = 1; i <= n; i++) {
    let number: number = parseFloat(
      (document.getElementById(`n${i}`) as HTMLInputElement).value
    );

    denominator += 1 / number;
  }

  let h = n / denominator;

  result.innerText = `H = ${h}`;
});
