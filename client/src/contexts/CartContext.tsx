import { createContext, useReducer, Dispatch, ReactNode } from "react";
import { cartReducer, ShoppingCartItem } from "../reducers/CartReducer";

const initialCartState: ShoppingCartItem[] = [];

export const CartContext = createContext<{
  cart: ShoppingCartItem[];
  dispatch: Dispatch<any>;
}>({
  cart: initialCartState,
  dispatch: () => null,
});

CartContext.displayName = "CartContext";

interface CartProviderProps {
  children: ReactNode;
}

export const CartProvider: React.FC<CartProviderProps> = ({ children }) => {
  const [cart, dispatch] = useReducer(cartReducer, initialCartState);

  return (
    <CartContext.Provider value={{ cart, dispatch }}>
      {children}
    </CartContext.Provider>
  );
};
