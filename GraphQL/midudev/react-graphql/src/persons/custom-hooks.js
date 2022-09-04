import { useQuery } from "@apollo/client";
import { ALL_PERSONS } from "./graphql-queries";

export const usePersons = () => {
  return useQuery(ALL_PERSONS);
};
