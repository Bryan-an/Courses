import { useState } from "react";
import CountChild from "./CountChild";

const Count = () => {
  const [count, setCount] = useState(0);

  const add = () => setCount(count + 1);
  const subtract = () => setCount(count - 1);

  return (
    <div style={{ textAlign: "center" }}>
      <h2>Counter</h2>
      <nav>
        <button onClick={add}>+</button>
        <button onClick={subtract}>-</button>
      </nav>
      <h3>{count}</h3>
      <CountChild />
    </div>
  );
};

export default Count;
