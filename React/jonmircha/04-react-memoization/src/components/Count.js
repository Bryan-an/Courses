import { useCallback, useState } from "react";
import CountChild from "./CountChild";

const Count = () => {
  const [count, setCount] = useState(0);
  const [input, setInput] = useState("");

  // const add = () => setCount(count + 1);
  const add = useCallback(() => {
    setCount(count + 1);
  }, [count]);

  // const subtract = () => setCount(count - 1);
  const subtract = useCallback(() => setCount(count - 1), [count]);

  const handleInput = (e) => setInput(e.target.value);

  return (
    <div style={{ textAlign: "center" }}>
      <h2>Counter</h2>
      <nav>
        <button onClick={add}>+</button>
        <button onClick={subtract}>-</button>
      </nav>
      <h3>{count}</h3>
      <input type="text" onChange={handleInput} value={input} />
      <CountChild count={count} add={add} subtract={subtract} />
    </div>
  );
};

export default Count;
