import React, { createContext, useState, useEffect, ReactNode } from "react";
import axios from "axios";
import { Category } from "../types"; // Updated name for the category type

export const CategoryContext = createContext<Category[] | []>([]); // Updated context name
CategoryContext.displayName = "CategoryContext";

interface CategoryProviderProps {
  children: ReactNode;
}

const CategoryProvider: React.FC<CategoryProviderProps> = ({ children }) => {
  const [categoryList, setCategoryList] = useState<Category[]>([]);

  useEffect(() => {
    axios
      .get("http://localhost:8080/IbrahimBookstoreReactState/api/categories")
      .then((result) => setCategoryList(result.data))
      .catch(console.error);
  }, []);

  return (
    <CategoryContext.Provider value={categoryList}>
      {children}
    </CategoryContext.Provider>
  );
};

export default CategoryProvider;
