import "./style.css";
import { setupCounter } from "./counter.js";

document.querySelector("#app").innerHTML = `
  <p>Hello World</p>
  <button>Click me</button>
`;

setupCounter(document.querySelector("#counter"));
