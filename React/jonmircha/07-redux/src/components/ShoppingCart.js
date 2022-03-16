import React from "react";
import { useDispatch, useSelector } from "react-redux";
import { clearCart } from "../actions/shoppingActions";
import CartItem from "./CartItem";
import ProductItem from "./ProductItem";

const ShoppingCart = () => {
  const {
    shopping: { products, cart },
  } = useSelector((state) => state);

  const dispatch = useDispatch();

  return (
    <div>
      <h2>Shopping Cart</h2>
      <h3>Products</h3>
      <article className="box grid-responsive">
        {products.map((product) => (
          <ProductItem key={product.id} data={product} />
        ))}
      </article>
      <h3>Cart</h3>
      <article className="box">
        <button onClick={() => dispatch(clearCart())}>Clear Cart</button>
        {cart.map((item, index) => (
          <CartItem key={index} data={item} />
        ))}
      </article>
    </div>
  );
};

export default ShoppingCart;
