import React from "react";
import { useDispatch } from "react-redux";
import { addToCart } from "../actions/shoppingActions";

const ProductItem = ({ data }) => {
  let { id, name, price } = data;
  const dispatch = useDispatch();

  return (
    <div style={{ border: "thin solid gray", padding: "1rem" }}>
      <h4>{name}</h4>
      <h5>${price}.00</h5>
      <button onClick={() => dispatch(addToCart(id))}>Add</button>
    </div>
  );
};

export default ProductItem;
