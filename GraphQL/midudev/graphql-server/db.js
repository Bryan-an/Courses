import mongoose from "mongoose";

const MONGODB_URI = `mongodb+srv://bryan:V5CNeeptEhjhRpY2@cluster0.rj2p1r3.mongodb.net/mongodb-graphql?retryWrites=true&w=majority`;

mongoose
  .connect(MONGODB_URI, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => {
    console.log("connected to MongoDB");
  })
  .catch((error) => {
    console.error("error connection to MongoDB", error);
  });
