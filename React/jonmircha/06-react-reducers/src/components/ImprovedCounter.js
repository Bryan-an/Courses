import React, { useReducer } from "react";
import { TYPES } from "../actions/counterActions";
import {
  counterInit,
  counterInitialState,
  counterReducer,
} from "../reducers/counterReducer";

const ImprovedCounter = () => {
  const [state, dispatch] = useReducer(
    counterReducer,
    counterInitialState,
    counterInit
  );

  const sum = () =>
    dispatch({
      type: TYPES.INCREMENT,
    });

  const sum5 = () =>
    dispatch({
      type: TYPES.INCREMENT_5,
      payload: 5,
    });

  const subtract = () =>
    dispatch({
      type: TYPES.DECREMENT,
    });

  const subtract5 = () =>
    dispatch({
      type: TYPES.DECREMENT_5,
      paylaod: 5,
    });

  const reset = () =>
    dispatch({
      type: TYPES.RESET,
    });

  return (
    <div style={{ textAlign: "center" }}>
      <h2>Improved Counter Reducer</h2>
      <nav>
        <button onClick={sum5}>+5</button>
        <button onClick={sum}>+</button>
        <button onClick={reset}>0</button>
        <button onClick={subtract}>-</button>
        <button onClick={subtract5}>-5</button>
      </nav>
      <h3>{state.count}</h3>
    </div>
  );
};

export default ImprovedCounter;
