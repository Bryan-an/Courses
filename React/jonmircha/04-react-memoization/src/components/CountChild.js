import { memo, useMemo } from "react";

const CountChild = ({ count, add, subtract }) => {
  // let superNumber = 0;
  //
  // for (let i = 0; i < 1000000000; i++) {
  //   superNumber++;
  // }

  const superNumber = useMemo(() => {
    let number = 0;

    for (let i = 0; i < 1000000000; i++) {
      number++;
    }

    return number;
  }, []);

  console.log("Count's child is rendered");

  return (
    <div style={{ border: "thin solid #000", margin: "1rem", padding: "1rem" }}>
      <h2>Count's Child</h2>
      <h3>{count}</h3>
      <nav>
        <button onClick={add}>+</button>
        <button onClick={subtract}>-</button>
      </nav>
      <h3>{superNumber}</h3>
    </div>
  );
};

export default memo(CountChild);
