DELETE FROM book;
ALTER TABLE book AUTO_INCREMENT = 1001;

DELETE FROM category;
ALTER TABLE category AUTO_INCREMENT = 1001;

INSERT INTO `category` (`name`) VALUES ('New Releases'),('For You'),('Best Sellers'),('Trending'),('On Sale'),('Fiction'),('Business'),('Romance'),('Travel'),('Cooking'),('Action & Adventure'),('DIY');

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('1984', 'George Orwell', '', 17.45, 0, TRUE, FALSE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('All The Colors of the Dark', 'Chris Walker', '', 13.59, 0, TRUE, FALSE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', '', 15.99, 0, FALSE, FALSE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Housemaid', 'Freida McFadden', '', 8.99, 0, TRUE, FALSE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Daydream', 'Hannah Grace', '', 12.5, 0, FALSE, FALSE, 1001);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Remarkably Bright Creatures', 'Shelby Van Pelt', '', 18.99, 0, TRUE, FALSE, 1001);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Sapiens', 'Yuval Noah Harari', '', 24.99, 0, TRUE, FALSE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Animal Farm', 'George Orwell', '', 5.50, 0, TRUE, FALSE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Why Nations Fail', 'Daron Acemoglu and James A. Robinson', '', 13.50, 0, FALSE, FALSE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Origin of Species', 'Charles Darwin', '', 29.50, 0, TRUE, FALSE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Bananas, Beaches, and Bases', 'Cynthia Enloe', '', 15.8, 0, FALSE, FALSE, 1002);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Imagined Communities', 'Benedict Anderson', '', 18.4, 0, TRUE, FALSE, 1002);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Taylor Swift: The New York Times Best Seller', 'Maria Isabel Sanchez Vegara, Borghild Fallberg (Illustrator)', '', 9.58, 0, FALSE, FALSE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Welcome to the Club', 'Raquel Dapice', 'Welcome to the Club: 100 Parenting Milestones You Never Saw Coming (Parenting Books, Parenting Books Best Sellers, New Parents Gift)', 9.35, 0, TRUE, FALSE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Dancing with Cats', 'Burton Silver, Heather Busch', '', 12, 0, FALSE, FALSE, 1003);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Ablaze', 'Christopher Krovatin', '', 21, 0, TRUE, FALSE, 1003);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Melania', 'Melania Trump', '', 27.31, 0, FALSE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('What I Ate in One Year', 'Stanley Tucci', '', 26, 0, TRUE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Born a Crime', 'Trevor Noah', '', 31, 0, FALSE, FALSE, 1004);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('On Writing: A Memoir of the Craft', 'Stephen King', '', 56, 0, TRUE, FALSE, 1004);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Romeo and Juliet', 'William Shakespeare', '', 2.99, 0, TRUE, FALSE, 1005);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Tragedy of Hamlet: Prince of Denmark', 'William Shakespeare', '', 16.31, 0, TRUE, FALSE, 1005);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Harry Potter and the Cursed Child', 'J K Rowling, Jack Thorne, John Tiffany', '', 1.45, 0, TRUE, FALSE, 1005);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Yellowstone', 'Gabriel Gator Guilbeau', '', 13.99, 0, TRUE, FALSE, 1005);


INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('A Court of Mist and Ruin', 'Sarah J. Maas', '', 21.50, 0, TRUE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Assassin\'s Blade', 'Sarah J. Maas', '', 14.50, 0, TRUE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The House in the Cerulean Sea', 'TJ Klune', '', 18.45, 0, FALSE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Reckless', 'Luan Roberts', '', 11.75, 0, TRUE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Things We Never Got Over', 'Lucy Score', '', 15.60, 0, FALSE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Butcher and the Blackbird', 'Brynne Weaver', '', 23.50, 0, TRUE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('House of Earth and Blood', 'Sarah J. Maas', '', 23.99, 0, TRUE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('House of Sky and Breath', 'Sarah J. Maas', '', 24.99, 0, FALSE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Zodiac Academy 2', 'C. Peckham and S. Valenti', '', 23.50, 0, FALSE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Two Twisted Crowns', 'Rachel Gillig', '', 11.89, 0, TRUE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Iron and Flames', 'Rebecca Yarros', '', 19.99, 0, FALSE, FALSE, 1006);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('World of Walkers', 'Neal Asher', '', 29.92, 0, TRUE, FALSE, 1006);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Zero to One: Notes on Startups, or How to Build the Future', 'Peter Thiel', '',16.99, 0, TRUE, FALSE, 1007);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Startup Wife', 'Tahmima Anam', '', 27.90, 0, FALSE, FALSE, 1007);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Mind of the CEO: The World\'s Business Leaders', 'Jeffrey E. Garten', '', 29.99, 0, TRUE, FALSE, 1007);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The World\'s Business Cultures: How to Unlock Them', 'Barry Tomalin, Ma, Mike Nicks', '', 12.44, 0, FALSE, FALSE, 1007);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Whenever I Hear That Song: The memoir', 'Martin Broughton', '', 26.70, 0, TRUE, FALSE, 1007);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Last Letter', 'Rebecca Yarros', '',12.99, 0, TRUE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Every Summer After', 'Carley Fortune', '', 24.99, 0, FALSE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Pumpkin Spice Café', 'Laurie Gilmore', '', 18.99, 0, FALSE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Pickleballers', 'Ilana Long', '',15.99, 0, TRUE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('It Ends with Us', 'Colleen Hoover', '', 14.99, 0, FALSE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Christmas Fix', 'Lucy Score', '', 14.99, 0, TRUE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Counting Miracles', 'Nicholas Sparks', '', 30.96, 0, TRUE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Here One Moment', 'Liane Moriarty', '', 20.00, 0, TRUE, FALSE, 1008);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Forty Rules of Love: A Novel of Rumi', 'Elif Shafak', '', 14.99, 0, TRUE, FALSE, 1008);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Destinations of a Lifetime: Most Amazing Places', 'National Geographic', '',14.11, 0, FALSE, FALSE, 1009);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('National Geographic: Complete National Parks', 'National Geographic', '', 24.99, 0, TRUE, FALSE, 1009);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Best of Italy', 'Rick Steves', '', 18.99, 0, TRUE, FALSE, 1009);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Japan', 'Lonely Planet', '',21.99, 0, FALSE, FALSE, 1009);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Life on Svalbard: Finding Home on a Remote Island', 'Cecilia Blomdahl', '', 60.21, 0, TRUE, FALSE, 1009);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Ride of Her Life: The True Story of a Woman, Her Horse', 'Elizabeth Letts', '', 28.34, 0, FALSE, FALSE, 1009);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Complete Mediterranean Cookbook', 'The Editors at America\'s Test Kitchen', '', 24.99, 0, TRUE, FALSE, 1010);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Complete Anti-Inflammatory Diet for Beginners', 'Dorothy Calimeris and Lulu Cook', '', 11.99, 0, FALSE, FALSE, 1010);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Big Vegan Flavor: Techniques and 150 Recipes', 'Nisha Vora', '', 49.00, 0, TRUE, FALSE, 1010);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Essentials of Classic Italian Cooking', 'Marcella Hazan', '', 29.80, 0, TRUE, FALSE, 1010);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('100 Cookies: The Baking Book for Every Kitchen', 'Sarah Kieffer', '', 19.99, 0, FALSE, FALSE, 1010);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Baking 101: From Cookies to Cakes and Everything In-Between', 'Gordon Ramsay', '', 11.30, 0, TRUE, FALSE, 1010);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Food Lab: Better Home Cooking Through Science', 'J. Kenji López-Alt', '', 35.00, 0, TRUE, FALSE, 1010);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Natasha\'s Kitchen: 100+ Easy Family-Favorite Recipes', 'Natasha Kravchuk', '', 11.43, 0, TRUE, FALSE, 1010);


INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Alchemist', 'Paulo Coelho', '', 14.99, 0, TRUE, FALSE, 1011);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Life of Pi', 'Yann Martel', '', 12.98, 0, TRUE, FALSE, 1011);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('The Adventures of Tom Sawyer', 'Mark Twain', '', 8.75, 0, FALSE, FALSE, 1011);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Robin Hood: The Classic Adventure Tale', 'Nicky Raven', '', 5.97, 0, TRUE, FALSE, 1011);

INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('DIY Biogas: Build Your Own Biogas Plant', 'Paul Scheckel', '', 7.06, 0, TRUE, FALSE, 1012);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Master Basic DIY: Teach Yourself', 'DIY Doctor', '', 30.51, 0, FALSE, FALSE, 1012);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Building DIY Websites for Dummies', 'Jennifer DeRosa', '', 8.75, 0, FALSE, FALSE, 1012);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Fanzines: The DIY Revolution', 'Teal Triggs', '', 39.87, 0, TRUE, FALSE, 1012);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('Beginner\'s Guide to DIY & Home Repair', 'Jo Behari, Alison Winfield-Chislett', '', 25.43, 0, FALSE, FALSE, 1012);
INSERT INTO `book` (title, author, description, price, rating, is_public, is_featured, category_id) VALUES ('DIY String Art: 24 Designs to Create and Hang', 'Jesse Dresbach', '', 17.88, 0, TRUE, FALSE, 1012);