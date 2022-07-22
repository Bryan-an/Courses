const form: HTMLFormElement = document.getElementById(
  "form"
) as HTMLFormElement;
const wordInput: HTMLInputElement = document.getElementById(
  "word"
) as HTMLInputElement;
const resultHead: HTMLHeadElement = document.getElementById(
  "result"
) as HTMLHeadElement;

form.addEventListener("submit", (e) => {
  let { value: sentence } = wordInput;
  let formattedSentence = sentence.replace(/\s/g, "");
  let reversedSentence = formattedSentence.split("").reverse().join("");

  resultHead.innerText =
    formattedSentence === reversedSentence
      ? "It is palindrome"
      : "It is not palindrome";
  e.preventDefault();
});
