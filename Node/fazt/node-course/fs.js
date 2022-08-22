const fs = require("fs");

// const first = fs.readFileSync("./data/first.txt", "utf-8");
// const second = fs.readFileSync("./data/second.txt");

// console.log(first);
// console.log(second.toString());

// const title = "\nThis content has been added";

// fs.writeFileSync("./data/fourth.txt", title, { flag: "a" });

fs.readFile("./data/first.txt", "utf-8", (error, data) => {
  if (error) {
    return console.log(error);
  }

  console.log(data);

  fs.readFile("./data/second.txt", "utf-8", (error, data) => {
    if (error) {
      return console.log(error);
    }

    console.log(data);

    fs.writeFile(
      "./data/newFile.txt",
      "File created from fs",
      (error, data) => {
        console.log(error);
        console.log(data);

        fs.writeFile(
          "./data/newFile2.txt",
          "File created from fs",
          (error, data) => {
            console.log(error);
            console.log(data);

            fs.writeFile(
              "./data/newFile3.txt",
              "File created from fs",
              (error, data) => {
                console.log(error);
                console.log(data);
              }
            );
          }
        );
      }
    );
  });
});
