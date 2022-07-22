var form = document.getElementById("form");
var wordInput = document.getElementById("word");
var resultHead = document.getElementById("result");
form.addEventListener("submit", function (e) {
    var sentence = wordInput.value;
    var formattedSentence = sentence.replace(/\s/g, "");
    var reversedSentence = formattedSentence.split("").reverse().join("");
    resultHead.innerText =
        formattedSentence === reversedSentence
            ? "It is palindrome"
            : "It is not palindrome";
    e.preventDefault();
});
