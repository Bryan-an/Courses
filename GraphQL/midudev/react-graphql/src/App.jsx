import reactLogo from "./assets/react.svg";
import "./App.css";
import { useEffect } from "react";

function App() {
  useEffect(() => {
    fetch("http://localhost:4000", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        query: `
          query {
            allPersons {
              name
              phone
            }
          }
        `,
      }),
    })
      .then((res) => res.json())
      .then((res) => {
        console.log(res.data);
      });
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <img src={reactLogo} className="App-logo" alt="logo" />
        <p>GraphQL + React!</p>
      </header>
    </div>
  );
}

export default App;
