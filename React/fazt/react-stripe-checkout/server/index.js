const express = require("express");
const Stripe = require("stripe");
const cors = require("cors");

const app = express();

const stripe = new Stripe(
  "sk_test_51KkKE5FRl4e8tpLx6Z2Fdi9Ltg2UxB8LKu0WTsVNHiqDD9PfxEx2Ai5pAgw19bXO2RjTIO3jcHbHcWUK6IuRh3VD00JnTXXrml"
);

app.use(cors({ origin: "http://localhost:3000" }));
app.use(express.json());

app.post("/api/checkout", async (req, res) => {
  try {
    const { id, amount } = req.body;

    const payment = await stripe.paymentIntents.create({
      amount,
      currency: "USD",
      description: "Gaming Keyboard",
      payment_method: id,
      confirm: true,
    });

    console.log(payment);

    res.json({ message: "Successfull payment" });
  } catch (error) {
    console.log(error);
    res.json({ message: error.raw.message });
  }
});

app.listen(3001, () => {
  console.log("Server on port", 3001);
});
