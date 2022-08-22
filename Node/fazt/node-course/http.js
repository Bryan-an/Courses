const http = require("http");

const server = http.createServer(function (request, response) {
  console.log(request.url);

  if (request.url === "/") {
    response.write("Welcome to the server");
    return response.end();
  }

  if (request.url === "/about") {
    response.write("About");
    return response.end();
  }

  response.write(`
      <h1>Not Found</h1>
      <p>This page does not exist.</p>
      <a href="/">Back to Home</a>
    `);
  response.end();
});

server.listen(3000);

console.log("Server is listening on port 3000");
