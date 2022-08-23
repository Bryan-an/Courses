import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.send("<h1>Welcome</h1>");
});

app.get("/about", (req, res) => {
  res.send("<h1>About</h1>");
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Server on port ${PORT}`);
});
