import Count from "./components/Count";

function App() {
  return (
    <div>
      <h1>Memoization in React</h1>
      <hr />
      <h2>Theory</h2>
      <h3>
        <a
          href="https://es.reactjs.org/docs/react-api.html#reactmemo"
          target="_blank"
          rel="noreferrer"
        >
          memo
        </a>
      </h3>
      <hr />
      <Count />
      <hr />
    </div>
  );
}

export default App;
