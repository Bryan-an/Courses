const fs = require("fs");

// Read a file

console.log("Before reading the file");

const file = fs.readFileSync("./index.html", "utf-8");
console.log(file);

console.log("After reading the file...");

// Change the file name

console.log("Before changing the file name");

fs.renameSync("./index.html", "./main.html");

console.log("After changing the file name...");

// Add content at the end of the file.

console.log("Before adding content at the end of the file");

fs.appendFileSync("./main.html", "<p>Hello</p>");

console.log("After adding content at the end of the file...");

// Replace all the content file.

console.log("Before replacing all the content file");

fs.writeFileSync("./main.html", "New Content");

console.log("After replacing all the content file...");

// Delete a file

console.log("Before deleting all the content file");

fs.unlinkSync("./main.html");

console.log("After deleting all the content file...");
