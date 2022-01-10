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
      <ul>
        <li>It responsible for memorizing a component.</li>
        <li>
          He memorizes it again the moment his <b>props</b> change.
        </li>
        <li>It avoid re-renderings.</li>
        <li>
          It should be avoided as far as possible, as the memorization task
          could be more expensive than re-rendering the component.
        </li>
        <li>
          Use it, when:
          <ul>
            <li>We have many rendered items in a list.</li>
            <li>We call data from APIs.</li>
            <li>A component becomes very heavy.</li>
            <li>Performance alerts appear on the console.</li>
          </ul>
        </li>
      </ul>
      <h3>
        <a
          href="https://es.reactjs.org/docs/hooks-reference.html#usecallback"
          target="_blank"
          rel="noreferrer"
        >
          useCallback
        </a>
      </h3>
      <ul>
        <li>Memorize a function so that it is not redefined in each render.</li>
        <li>
          Use it whenever a function is passed as a <b>prop</b> to a memorized
          component.
        </li>
        <li>
          Use it whenever a function is passed as a parameter of an effect.
        </li>
      </ul>
      <h3>
        <a
          href="https://es.reactjs.org/docs/hooks-reference.html#usememo"
          target="_blank"
          rel="noreferrer"
        >
          useMemo
        </a>
      </h3>
      <ul>
        <li>Memorizes a calculated value, that is, the result of a function</li>
        <li>Generates computed properties</li>
        <li>Use it in heavy processes</li>
      </ul>
      <hr />
      <Count />
      <hr />
    </div>
  );
}

export default App;
