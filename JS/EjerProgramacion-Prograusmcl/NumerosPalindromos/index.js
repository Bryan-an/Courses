var numberInput = document.getElementById("num");
var result = document.getElementById("result");
var form = document.getElementById("form");
form.addEventListener("submit", function (e) {
    var number = numberInput.value;
    var reversedNumber = numberInput.value.split("").reverse().join("");
    var message = "".concat(number, " is").concat(number === reversedNumber ? "" : " not", " palindrome");
    result.innerText = message;
    e.preventDefault();
});
