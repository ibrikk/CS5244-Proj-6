import React from "react";
import { Link, useParams } from "react-router-dom";
import "../assets/css/CategoryBookList.css";
import "../assets/css/global.css";
import { CategoryItem } from "../Types";

interface CategoryNavBarProps {
  otherCategories: CategoryItem[];
  toggleSignIn: () => void;
}

const CategoryNavBar: React.FC<CategoryNavBarProps> = ({
  otherCategories,
  toggleSignIn,
}) => {
  const { categoryName } = useParams();

  const isActive = (category: string) => categoryName === category;

  return (
    <nav className="grid grid-full">
      <div className="search-bar">
        <form action="/category">
          <input type="text" className="search-input" placeholder="Search..." />
        </form>
        <span className="material-symbols-outlined search-icon">search</span>
      </div>
      <div className="homepage-categories" onClick={toggleSignIn}>
        {otherCategories.map((category: CategoryItem) => (
          <Link
            key={category.categoryId}
            to={`/category/${category.name}`}
            className={
              isActive(category.name) ? "selected-category" : "category-link"
            }
          >
            {category.name}
          </Link>
        ))}
      </div>
    </nav>
  );
};

export default CategoryNavBar;
