const numberInput: HTMLInputElement = document.getElementById(
  "num"
) as HTMLInputElement;

const result: HTMLHeadingElement = document.getElementById(
  "result"
) as HTMLHeadingElement;

const form: HTMLFormElement = document.getElementById(
  "form"
) as HTMLFormElement;

form.addEventListener("submit", (e: SubmitEvent) => {
  let number: string = numberInput.value;
  let reversedNumber: string = numberInput.value.split("").reverse().join("");

  let message: string = `${number} is${
    number === reversedNumber ? "" : " not"
  } palindrome`;

  result.innerText = message;

  e.preventDefault();
});
