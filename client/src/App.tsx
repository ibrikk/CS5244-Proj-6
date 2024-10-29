import { useEffect, useState } from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import mockData from "./types";
import Header from "./components/Header";
import HomePage from "./components/HomePage";
import CategoryPage from "./components/CategoryBookList";
import Footer from "./components/Footer";

import "./assets/css/global.css";
import "./App.css";
import axios from "axios";

const App = () => {
  const [isSignedIn, setIsSignedIn] = useState(false);

  const toggleSignIn = () => {
    setIsSignedIn(true);
  };

  const [categories, setCategories] = useState([]);

  useEffect(() => {
    axios
      .get(
        // "http://webdev.cs.vt.edu:8080/IbrahimBookstoreReactState/api/categories"
        "http://localhost:8080/IbrahimBookstoreReactState/api/categories"
      )
      .then((result) => setCategories(result.data))
      .catch(console.error);
  }, []);

  return (
    <Router basename="/IbrahimBookstoreReactState">
      <div className="app-container">
        {/* TODO: Add a functionality to the button to change on toggle to the profile pic and vice versa */}
        <Header isSignedIn={isSignedIn} />
        <main className="main-content">
          <Routes>
            <Route
              path="/"
              element={
                <HomePage toggleSignIn={toggleSignIn} categories={categories} />
              }
            />
            <Route
              path="/category/:categoryName"
              element={
                <CategoryPage
                  toggleSignIn={toggleSignIn}
                  categories={categories}
                />
              }
            />
          </Routes>
        </main>
        <Footer />
      </div>
    </Router>
  );
};
export default App;
