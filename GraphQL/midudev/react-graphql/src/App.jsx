import reactLogo from "./assets/react.svg";
import "./App.css";
import { Persons } from "./Persons";
import { PersonForm } from "./PersonForm";
import { usePersons } from "./persons/custom-hooks";
import { Notify } from "./Notify";
import { useState } from "react";
import { PhoneForm } from "./PhoneForm";
import { LoginForm } from "./LoginForm";
import { useApolloClient } from "@apollo/client";

function App() {
  const { data, error, loading } = usePersons();
  const [errorMessage, setErrorMessage] = useState(null);
  const [token, setToken] = useState(() =>
    localStorage.getItem("phonenumbers-user-token")
  );
  const client = useApolloClient();

  if (error) return <span style="color: red">{error}</span>;

  const notifyError = (message) => {
    setErrorMessage(message);
    setTimeout(() => setErrorMessage(null), 5000);
  };

  const logout = () => {
    setToken(null);
    localStorage.clear();
    client.resetStore();
  };

  return (
    <div className="App">
      <Notify errorMessage={errorMessage} />
      <header className="App-header">
        <img src={reactLogo} className="App-logo" alt="logo" />
        {loading ? <p>Loading...</p> : <Persons persons={data?.allPersons} />}
        {token ? (
          <button onClick={logout}>Log out</button>
        ) : (
          <LoginForm notifyError={notifyError} setToken={setToken} />
        )}
        <PhoneForm notifyError={notifyError} />
        <PersonForm notifyError={notifyError} />
      </header>
    </div>
  );
}

export default App;
