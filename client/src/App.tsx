import { useState } from "react";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Header from "./components/Header";
import HomePage from "./components/HomePage";
import CategoryPage from "./components/CategoryBookList";
import Footer from "./components/Footer";

import "./assets/css/global.css";
import "./App.css";

const App = () => {
  const [isSignedIn, setIsSignedIn] = useState(false);

  const toggleSignIn = () => {
    setIsSignedIn(true);
  };

  return (
    <Router basename="/IbrahimBookstoreReactState">
      <div className="app-container">
        <Header isSignedIn={isSignedIn} />
        <main className="main-content">
          <Routes>
            <Route
              path="/"
              element={<HomePage toggleSignIn={toggleSignIn} />}
            />
            <Route
              path="/category/:categoryName"
              element={<CategoryPage toggleSignIn={toggleSignIn} />}
            />
          </Routes>
        </main>
        <Footer />
      </div>
    </Router>
  );
};
export default App;
