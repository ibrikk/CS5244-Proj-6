import React, { createContext, useState, useEffect, ReactNode } from "react";
import axios from "axios";
import { CategoryItem } from "../Types";

export const CategoryContext = createContext<CategoryItem[] | []>([]);
CategoryContext.displayName = "CategoryContext";

interface CategoryProviderProps {
  children: ReactNode;
}

const CategoryProvider: React.FC<CategoryProviderProps> = ({ children }) => {
  const [categoryList, setCategoryList] = useState<CategoryItem[]>([]);

  useEffect(() => {
    axios
      .get(
        "http://webdev.cs.vt.edu:8080/IbrahimBookstoreReactState/api/categories"
      )
      // .get("http://localhost:8080/IbrahimBookstoreReactState/api/categories")
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
