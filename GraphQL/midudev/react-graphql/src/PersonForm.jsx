import { useMutation } from "@apollo/client";
import { useState } from "react";
import { CREATE_PERSON } from "./persons/graphql-mutations";
import { ALL_PERSONS } from "./persons/graphql-queries";

export const PersonForm = ({ notifyError }) => {
  const [name, setName] = useState("");
  const [phone, setPhone] = useState("");
  const [street, setStreet] = useState("");
  const [city, setCity] = useState("");

  const [createPerson] = useMutation(CREATE_PERSON, {
    refetchQueries: [{ query: ALL_PERSONS }],
    onError: (error) => {
      notifyError(error.graphQLErrors[0].message);
    },
  });

  const handleSubmit = async (e) => {
    e.preventDefault();

    await createPerson({ variables: { name, phone, street, city } });

    setName("");
    setPhone("");
    setStreet("");
    setCity("");
  };

  return (
    <div>
      <h2>Create new Person</h2>
      <form onSubmit={handleSubmit}>
        <input
          placeholder="Name"
          type="text"
          value={name}
          onChange={(evt) => setName(evt.target.value)}
        />
        <input
          placeholder="Phone"
          type="text"
          value={phone}
          onChange={(evt) => setPhone(evt.target.value)}
        />
        <input
          placeholder="Street"
          type="text"
          value={street}
          onChange={(evt) => setStreet(evt.target.value)}
        />
        <input
          placeholder="City"
          type="text"
          value={city}
          onChange={(evt) => setCity(evt.target.value)}
        />
        <button>Add Person</button>
      </form>
    </div>
  );
};
