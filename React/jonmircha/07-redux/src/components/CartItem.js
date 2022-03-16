import React from "react";
import { useDispatch } from "react-redux";
import { delFromCart } from "../actions/shoppingActions";

const CartItem = ({ data }) => {
  let { id, name, price, quantity } = data;
  const dispatch = useDispatch();

  return (
    <div style={{ borderBottom: "thin solid gray" }}>
      <h4>{name}</h4>
      <h5>
        ${price}.00 x {quantity} = ${price * quantity}.00
      </h5>
      <button onClick={() => dispatch(delFromCart(id))}>Remove</button>
      <br />
      <button onClick={() => dispatch(delFromCart(id, true))}>
        Remove All
      </button>
    </div>
  );
};

export default CartItem;
