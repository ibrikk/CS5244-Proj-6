import React, { useEffect, useState } from "react";
import Hero from "./Hero";
import HomeNavBar from "./HomeNavBar";
import Card from "./Card";
import { Book, Category } from "../types";
import "../assets/css/global.css";
import "../assets/css/Home.css";
import "../assets/css/CategoryBookList.css";
import "../assets/css/CategoryBookListItem.css";
import "../assets/css/CategoryNav.css";
import "../assets/css/HeaderDropdown.css";
import axios from "axios";
import Spinner from "./Spinner"; // Import the Spinner component

/* Static images */
// New Releases
import img1984 from "../assets/images/books/1984.jpg";
import imgAllTheDarkColors from "../assets/images/books/all_the_dark_colors.jpg";
import imgGreatGatsby from "../assets/images/books/great-gratsby.jpg";
import imgTheHousemaid from "../assets/images/books/the_housemaid.jpg";
import imgDaydream from "../assets/images/books/daydream.jpg";
import rmrCreatures from "../assets/images/books/remarkably.jpg";

// For You
import sapiens from "../assets/images/books//sapiens.jpg";
import animalFarm from "../assets/images/books/Animal Farm.jpg";
import whyNationFail from "../assets/images/books/daron acemoglu.jpg";
import originOfSecies from "../assets/images/books/Darvin Origins.jpg";
import bananasBeaches from "../assets/images/books//cyntia Enloe.jpg";
import imaginedCommunities from "../assets/images/books/imagined communities.jpg";

// No image
import noImage from "../assets/images/books/no-image.jpg";

interface HomePageProps {
  categories: Category[];
  toggleSignIn: () => void;
}

const HomePage: React.FC<HomePageProps> = ({ toggleSignIn, categories }) => {
  const [categoryOneBooks, setCategoryOneBooks] = useState<Book[]>([]);
  const [categoryTwoBooks, setCategoryTwoBooks] = useState<Book[]>([]);
  const [loading, setLoading] = useState<boolean>(true); // Loading state

  // Function to add picture paths to each book
  const addLocalImagePaths = (books: Book[], categoryId: number) => {
    const imageMap: { [key: number]: { [key: number]: string } } = {
      1001: {
        1001: img1984,
        1002: imgAllTheDarkColors,
        1003: imgGreatGatsby,
        1004: imgTheHousemaid,
        1005: imgDaydream,
        1006: rmrCreatures,
      },
      1002: {
        1007: sapiens,
        1008: animalFarm,
        1009: whyNationFail,
        1010: originOfSecies,
        1011: bananasBeaches,
        1012: imaginedCommunities,
      },
    };
    return books.map((book: Book) => ({
      ...book,
      picture: imageMap[categoryId][book.bookId] || noImage, // Fallback to default image
    }));
  };

  useEffect(() => {
    // Fetch category one books
    const fetchCategoryOneBooks = axios.get(
      // "http://webdev.cs.vt.edu:8080/IbrahimBookstoreReactFetch/api/categories/1001/books"
      "http://localhost:8080/IbrahimBookstoreReactFetch/api/categories/1001/books"
    );
    // Fetch category two books
    const fetchCategoryTwoBooks = axios.get(
      // "http://webdev.cs.vt.edu:8080/IbrahimBookstoreReactFetch/api/categories/1002/books"
      "http://localhost:8080/IbrahimBookstoreReactFetch/api/categories/1002/books"
    );

    Promise.all([fetchCategoryOneBooks, fetchCategoryTwoBooks])
      .then(([result1, result2]) => {
        const booksWithImages1 = addLocalImagePaths(result1.data, 1001);
        const booksWithImages2 = addLocalImagePaths(result2.data, 1002);

        setCategoryOneBooks(booksWithImages1);
        setCategoryTwoBooks(booksWithImages2);
        setLoading(false);
      })
      .catch((error) => {
        console.error(error);
        setLoading(false);
      });
  }, []);

  return (
    <>
      <HomeNavBar toggleSignIn={toggleSignIn} categories={categories} />

      <Hero firstCategory={categories[0]?.name} />

      {loading ? (
        <Spinner />
      ) : (
        <section className="grid grid-full">
          <h3 className="homepage-category-name">{categories[0]?.name}</h3>
          <div className="cards-container grid grid-full">
            {categoryOneBooks.map((book: Book) => (
              <Card key={book.bookId} book={book} isHomePage={true} />
            ))}
          </div>

          <h3 className="homepage-category-name">{categories[1]?.name}</h3>
          <div className="cards-container grid grid-full">
            {categoryTwoBooks.map((book: Book) => (
              <Card key={book.bookId} book={book} isHomePage={true} />
            ))}
          </div>
        </section>
      )}
    </>
  );
};

export default HomePage;
