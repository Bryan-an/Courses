const http = require("http");
const fs = require("fs");
const path = require("path");

http
  .createServer((req, res) => {
    console.log(`${req.method} requests ${req.url}`);

    if (req.url === "/") {
      fs.readFile(
        "./server_documents/public/index.html",
        "UTF-8",
        (err, html) => {
          res.writeHeader(200, { "Content-Type": "text/html" });
          res.end(html);
        }
      );
    } else if (req.url.match(/.css$/)) {
      const reqPath = path.join(__dirname, "public", req.url);
    } else {
      res.writeHead(404, { "Content-Type": "text/plain" });
      res.end("404 ERROR");
    }
  })
  .listen(3000);

console.log("Server started...");
