import {
  INCREMENT,
  DECREMENT,
  INCREMENT_5,
  DECREMENT_5,
  RESET,
} from "../types";

export const sum = () => ({
  type: INCREMENT,
});

export const subtract = () => ({
  type: DECREMENT,
});

export const sum5 = () => ({
  type: INCREMENT_5,
  payload: 5,
});

export const subtract5 = () => ({
  type: DECREMENT_5,
  payload: 5,
});

export const reset = () => ({
  type: RESET,
});
