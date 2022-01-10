var numbersQuantityInput = document.getElementById("numbers-amount");
var numbersContainer = document.getElementById("numbers-container");
var form = document.getElementById("form");
var result = document.getElementById("result");
var numbersAmount = 1;
numbersQuantityInput.addEventListener("change", function () {
    numbersAmount = parseInt(numbersQuantityInput.value);
    numbersContainer.innerHTML = "";
    var numbersFragment = document.createDocumentFragment();
    for (var i = 1; i <= numbersAmount; i++) {
        var numberContainer = document.createElement("div");
        var numberLabel = document.createElement("label");
        var numberInput = document.createElement("input");
        numbersContainer.classList.add("number-container");
        numberLabel.innerText = "n".concat(i, ": ");
        numberInput.type = "text";
        numberInput.name = "n".concat(i);
        numberInput.id = "n".concat(i);
        numberInput.required = true;
        numberInput.pattern = "^-?\\d+(\\.\\d{1,2})?$";
        numberInput.title = "Enter a real number";
        numberLabel.appendChild(numberInput);
        numberContainer.appendChild(numberLabel);
        numbersFragment.appendChild(numberContainer);
    }
    numbersContainer.appendChild(numbersFragment);
});
form.addEventListener("submit", function (e) {
    e.preventDefault();
    var n = parseFloat(numbersQuantityInput.value);
    var denominator = 0;
    for (var i = 1; i <= n; i++) {
        var number = parseFloat(document.getElementById("n".concat(i)).value);
        denominator += 1 / number;
    }
    var h = n / denominator;
    result.innerText = "H = ".concat(h);
});
