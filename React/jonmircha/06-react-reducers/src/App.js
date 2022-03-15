import Counter from "./components/Counter";
import CrudApi from "./components/CrudApi";
import ImprovedCounter from "./components/ImprovedCounter";
import ShoppingCart from "./components/ShoppingCart";

function App() {
  return (
    <div className="App">
      <h1>useReducer</h1>
      <hr />
      <CrudApi />
      <hr />
      <ShoppingCart />
      <hr />
      <ImprovedCounter />
      <hr />
      <Counter />
    </div>
  );
}

export default App;
