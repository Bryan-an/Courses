const http = require("http");

http
  .createServer((req, res) => {
    res.writeHead(200, { "content-type": "text/html" });
    res.end(`
    <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HTML Document</title>
  </head>
  <body>
    <h1>Hello World</h1>
    <p>Welcome to my server</p>
  </body>
</html>
    `);
  })
  .listen(3000);

console.log("Server started...");
