import { TYPES } from "../actions/counterActions";

export const counterInitialState = { count: 0 };

export const counterInit = (initialState) => {
  return {
    count: counterInitialState.count + 100,
  };
};

export function counterReducer(state, action) {
  switch (action.type) {
    case TYPES.INCREMENT:
      return { count: state.count + 1 };
    case TYPES.INCREMENT_5:
      return { count: state.count + action.payload };
    case TYPES.DECREMENT:
      return { count: state.count - 1 };
    case TYPES.DECREMENT_5:
      return { count: state.count - action.paylaod };
    case TYPES.RESET:
      return counterInitialState;
    default:
      return state;
  }
}
