import { Provider } from "react-redux";
import Counter from "./components/Counter";
import ReduxTheory from "./components/ReduxTheory";
import ShoppingCart from "./components/ShoppingCart";
import CrudApi from "./components/CrudApi";
import store from "./store";

function App() {
  return (
    <Provider store={store}>
      <div style={{ textAlign: "center" }}>
        <h1>Redux</h1>
        <hr />
        <CrudApi />
        <hr />
        <ShoppingCart />
        <hr />
        <Counter />
        <hr />
        <ReduxTheory />
      </div>
    </Provider>
  );
}

export default App;
