import express from "express";
import fileUpload from "express-fileupload";

const app = express();

app.use(
  fileUpload({
    useTempFiles: true,
    tempFileDir: "./uploads",
  })
);

app.get("/", (req, res) => {
  res.json({ message: "Welcome to server with s3" });
});

app.post("/files", (req, res) => {
  console.log(req.files);
  res.json({ message: "Uploaded file" });
});

app.listen(3000, () => {
  console.log(`Server on port ${3000}`);
});
