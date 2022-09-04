const EventEmitter = require("events");

const productsEmitter = new EventEmitter();

productsEmitter.on("purchase", (total, productsNum) => {
  console.log(`Purchase total: $${total}.`);
  console.log(`Products number: ${productsNum}.`);
});

productsEmitter.emit("purchase", 500, 5);
