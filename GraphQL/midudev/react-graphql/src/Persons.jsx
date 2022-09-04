import { useLazyQuery } from "@apollo/client";
import { useEffect, useState } from "react";
import { FIND_PERSON } from "./persons/graphql-queries";

export const Persons = ({ persons }) => {
  const [getPerson, result] = useLazyQuery(FIND_PERSON);
  const [person, setPerson] = useState(null);

  console.log(person);

  const showPerson = (name) => {
    getPerson({ variables: { nameToSearch: name } });
  };

  useEffect(() => {
    if (result.data) {
      setPerson(result.data.findPerson);
    }
  }, [result]);

  if (person) {
    return (
      <div>
        <h2>{person.name}</h2>
        <div>
          {person.address.street}, {person.address.city}
        </div>
        <div>{person.phone}</div>
        <button onClick={() => setPerson(null)}>Close</button>
      </div>
    );
  }

  if (persons === null) return null;

  return (
    <div>
      <h1>Persons</h1>
      {persons.map((p) => (
        <div key={p.id} onClick={() => showPerson(p.name)}>
          {p.name} {p.phone}
        </div>
      ))}
    </div>
  );
};
