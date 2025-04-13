
use bookstore;
-- Insert into author table (20 authors)
INSERT INTO author (author_id, author_name, highest_education, county_origin) VALUES
('auth001', 'J.K. Rowling', 'BA in French and Classics', 'England'),
('auth002', 'Stephen King', 'BA in English', 'USA'),
('auth003', 'George R.R. Martin', 'MS in Journalism', 'USA'),
('auth004', 'Agatha Christie', 'No formal degree', 'England'),
('auth005', 'J.R.R. Tolkien', 'MA in English', 'England'),
('auth006', 'Dan Brown', 'BA in English', 'USA'),
('auth007', 'Haruki Murakami', 'BA in Drama', 'Japan'),
('auth008', 'Margaret Atwood', 'MA in English', 'Canada'),
('auth009', 'Ernest Hemingway', 'High School Diploma', 'USA'),
('auth010', 'Jane Austen', 'Home Education', 'England'),
('auth011', 'F. Scott Fitzgerald', 'Attended Princeton', 'USA'),
('auth012', 'Leo Tolstoy', 'University Dropout', 'Russia'),
('auth013', 'Mark Twain', 'Elementary School', 'USA'),
('auth014', 'Charles Dickens', 'No formal education', 'England'),
('auth015', 'Virginia Woolf', 'Home Education', 'England'),
('auth016', 'Gabriel García Márquez', 'Law School Dropout', 'Colombia'),
('auth017', 'Toni Morrison', 'MA in English', 'USA'),
('auth018', 'Chinua Achebe', 'BA in English', 'Nigeria'),
('auth019', 'Salman Rushdie', 'MA in History', 'India'),
('auth020', 'Kazuo Ishiguro', 'MA in Creative Writing', 'Japan');

-- Insert into book_language table (10 languages)
INSERT INTO book_language (language_id, language_name) VALUES
('lang001', 'English'),
('lang002', 'Spanish'),
('lang003', 'French'),
('lang004', 'German'),
('lang005', 'Japanese'),
('lang006', 'Russian'),
('lang007', 'Chinese'),
('lang008', 'Italian'),
('lang009', 'Portuguese'),
('lang010', 'Arabic');

-- Insert into publisher table (15 publishers)
INSERT INTO publisher (publisher_id, publisher_name) VALUES
('pub001', 'Penguin Random House'),
('pub002', 'HarperCollins'),
('pub003', 'Simon & Schuster'),
('pub004', 'Hachette Livre'),
('pub005', 'Macmillan Publishers'),
('pub006', 'Scholastic Corporation'),
('pub007', 'Pearson Education'),
('pub008', 'Oxford University Press'),
('pub009', 'Cambridge University Press'),
('pub010', 'Bloomsbury Publishing'),
('pub011', 'Vintage Books'),
('pub012', 'Faber & Faber'),
('pub013', 'Knopf Doubleday'),
('pub014', 'W.W. Norton & Company'),
('pub015', 'Houghton Mifflin Harcourt');

-- Insert into books table (30 books)
INSERT INTO books (book_id, book_title, publisher_id, language_id) VALUES
('book001', 'Harry Potter and the Philosopher''s Stone', 'pub010', 'lang001'),
('book002', 'The Shining', 'pub003', 'lang001'),
('book003', 'A Game of Thrones', 'pub002', 'lang001'),
('book004', 'Murder on the Orient Express', 'pub001', 'lang001'),
('book005', 'The Hobbit', 'pub005', 'lang001'),
('book006', 'The Da Vinci Code', 'pub001', 'lang001'),
('book007', 'Norwegian Wood', 'pub004', 'lang005'),
('book008', 'The Handmaid''s Tale', 'pub002', 'lang001'),
('book009', 'The Old Man and the Sea', 'pub011', 'lang001'),
('book010', 'Pride and Prejudice', 'pub008', 'lang001'),
('book011', 'The Great Gatsby', 'pub013', 'lang001'),
('book012', 'War and Peace', 'pub014', 'lang006'),
('book013', 'Adventures of Huckleberry Finn', 'pub015', 'lang001'),
('book014', 'A Tale of Two Cities', 'pub001', 'lang001'),
('book015', 'To the Lighthouse', 'pub012', 'lang001'),
('book016', 'One Hundred Years of Solitude', 'pub011', 'lang002'),
('book017', 'Beloved', 'pub013', 'lang001'),
('book018', 'Things Fall Apart', 'pub008', 'lang001'),
('book019', 'Midnight''s Children', 'pub010', 'lang001'),
('book020', 'The Remains of the Day', 'pub012', 'lang001'),
('book021', 'Harry Potter and the Chamber of Secrets', 'pub010', 'lang001'),
('book022', 'It', 'pub003', 'lang001'),
('book023', 'A Clash of Kings', 'pub002', 'lang001'),
('book024', 'Death on the Nile', 'pub001', 'lang001'),
('book025', 'The Lord of the Rings', 'pub005', 'lang001'),
('book026', 'Angels & Demons', 'pub001', 'lang001'),
('book027', 'Kafka on the Shore', 'pub004', 'lang005'),
('book028', 'The Testaments', 'pub002', 'lang001'),
('book029', 'For Whom the Bell Tolls', 'pub011', 'lang001'),
('book030', 'Sense and Sensibility', 'pub008', 'lang001');

-- Insert into books_author table (mapping books to authors)
INSERT INTO books_author (book_id, author_id) VALUES
('book001', 'auth001'), ('book021', 'auth001'),  -- J.K. Rowling
('book002', 'auth002'), ('book022', 'auth002'),  -- Stephen King
('book003', 'auth003'), ('book023', 'auth003'),  -- George R.R. Martin
('book004', 'auth004'), ('book024', 'auth004'),  -- Agatha Christie
('book005', 'auth005'), ('book025', 'auth005'),  -- J.R.R. Tolkien
('book006', 'auth006'), ('book026', 'auth006'),  -- Dan Brown
('book007', 'auth007'), ('book027', 'auth007'),  -- Haruki Murakami
('book008', 'auth008'), ('book028', 'auth008'),  -- Margaret Atwood
('book009', 'auth009'), ('book029', 'auth009'),  -- Ernest Hemingway
('book010', 'auth010'), ('book030', 'auth010'),  -- Jane Austen
('book011', 'auth011'),  -- F. Scott Fitzgerald
('book012', 'auth012'),  -- Leo Tolstoy
('book013', 'auth013'),  -- Mark Twain
('book014', 'auth014'),  -- Charles Dickens
('book015', 'auth015'),  -- Virginia Woolf
('book016', 'auth016'),  -- Gabriel García Márquez
('book017', 'auth017'),  -- Toni Morrison
('book018', 'auth018'),  -- Chinua Achebe
('book019', 'auth019'),  -- Salman Rushdie
('book020', 'auth020');  -- Kazuo Ishiguro

-- Insert into country table (10 countries)
INSERT INTO country (country_id, country_name) VALUES
('ctry001', 'United States'),
('ctry002', 'United Kingdom'),
('ctry003', 'Canada'),
('ctry004', 'Australia'),
('ctry005', 'Germany'),
('ctry006', 'France'),
('ctry007', 'Japan'),
('ctry008', 'Spain'),
('ctry009', 'Italy'),
('ctry010', 'Brazil');

-- Insert into address_status table
INSERT INTO address_status (status_id, status_name) VALUES
('stat001', 'Active'),
('stat002', 'Inactive'),
('stat003', 'Pending Verification'),
('stat004', 'Temporary'),
('stat005', 'Business');

-- Insert into address table (20 addresses)
INSERT INTO address (address_id, address_line1, country_id, status_id) VALUES
('addr001', '123 Main Street', 'ctry001', 'stat001'),
('addr002', '456 Oak Avenue', 'ctry002', 'stat001'),
('addr003', '789 Pine Road', 'ctry003', 'stat001'),
('addr004', '321 Elm Boulevard', 'ctry001', 'stat002'),
('addr005', '654 Maple Lane', 'ctry004', 'stat001'),
('addr006', '987 Cedar Street', 'ctry005', 'stat001'),
('addr007', '111 Birch Way', 'ctry006', 'stat003'),
('addr008', '222 Spruce Circle', 'ctry007', 'stat001'),
('addr009', '333 Willow Drive', 'ctry008', 'stat001'),
('addr010', '444 Aspen Court', 'ctry009', 'stat004'),
('addr011', '555 Redwood Avenue', 'ctry010', 'stat001'),
('addr012', '666 Sequoia Lane', 'ctry001', 'stat005'),
('addr013', '777 Magnolia Street', 'ctry002', 'stat001'),
('addr014', '888 Dogwood Road', 'ctry003', 'stat001'),
('addr015', '999 Sycamore Way', 'ctry004', 'stat002'),
('addr016', '1010 Palm Boulevard', 'ctry005', 'stat001'),
('addr017', '1212 Juniper Circle', 'ctry006', 'stat001'),
('addr018', '1313 Cypress Drive', 'ctry007', 'stat003'),
('addr019', '1414 Olive Court', 'ctry008', 'stat001'),
('addr020', '1515 Chestnut Avenue', 'ctry009', 'stat001');

-- Insert into customers table (20 customers)
INSERT INTO customers (customer_id, customer_phone, customer_name, customer_email, gender) VALUES
('cust001', 5551001, 'John Smith', 'john.smith@example.com', 'Male'),
('cust002', 5551002, 'Emily Johnson', 'emily.j@example.com', 'Female'),
('cust003', 5551003, 'Michael Brown', 'michael.b@example.com', 'Male'),
('cust004', 5551004, 'Sarah Davis', 'sarah.d@example.com', 'Female'),
('cust005', 5551005, 'David Wilson', 'david.w@example.com', 'Male'),
('cust006', 5551006, 'Jennifer Martinez', 'jennifer.m@example.com', 'Female'),
('cust007', 5551007, 'James Anderson', 'james.a@example.com', 'Male'),
('cust008', 5551008, 'Jessica Taylor', 'jessica.t@example.com', 'Female'),
('cust009', 5551009, 'Robert Thomas', 'robert.t@example.com', 'Male'),
('cust010', 5551010, 'Lisa Garcia', 'lisa.g@example.com', 'Female'),
('cust011', 5551011, 'Daniel Rodriguez', 'daniel.r@example.com', 'Male'),
('cust012', 5551012, 'Michelle Lee', 'michelle.l@example.com', 'Female'),
('cust013', 5551013, 'Christopher Walker', 'chris.w@example.com', 'Male'),
('cust014', 5551014, 'Amanda Hall', 'amanda.h@example.com', 'Female'),
('cust015', 5551015, 'Matthew Young', 'matthew.y@example.com', 'Male'),
('cust016', 5551016, 'Stephanie Allen', 'stephanie.a@example.com', 'Female'),
('cust017', 5551017, 'Joshua Hernandez', 'joshua.h@example.com', 'Male'),
('cust018', 5551018, 'Nicole King', 'nicole.k@example.com', 'Female'),
('cust019', 5551019, 'Andrew Wright', 'andrew.w@example.com', 'Male'),
('cust020', 5551020, 'Melissa Lopez', 'melissa.l@example.com', 'Female');

-- Insert into customer_address table (mapping customers to addresses)
INSERT INTO customer_address (customer_id, address_id) VALUES
('cust001', 'addr001'),
('cust002', 'addr002'),
('cust003', 'addr003'),
('cust004', 'addr004'),
('cust005', 'addr005'),
('cust006', 'addr006'),
('cust007', 'addr007'),
('cust008', 'addr008'),
('cust009', 'addr009'),
('cust010', 'addr010'),
('cust011', 'addr011'),
('cust012', 'addr012'),
('cust013', 'addr013'),
('cust014', 'addr014'),
('cust015', 'addr015'),
('cust016', 'addr016'),
('cust017', 'addr017'),
('cust018', 'addr018'),
('cust019', 'addr019'),
('cust020', 'addr020');

-- Insert into shipping_method table
INSERT INTO shipping_method (shippingMethod_id, method_name) VALUES
('ship001', 'Standard Shipping'),
('ship002', 'Express Shipping'),
('ship003', 'Overnight Shipping'),
('ship004', 'International Shipping'),
('ship005', 'Free Shipping'),
('ship006', 'Same Day Delivery'),
('ship007', 'Store Pickup');

-- Insert into order_status table
INSERT INTO order_status (order_status_id, status_name) VALUES
('stat001', 'Pending'),
('stat002', 'Processing'),
('stat003', 'Shipped'),
('stat004', 'Delivered'),
('stat005', 'Cancelled'),
('stat006', 'Returned'),
('stat007', 'Refunded');

-- Insert into customer_order table (30 orders)
INSERT INTO customer_order (order_id, shippingMethod_id, customer_id, order_status_id) VALUES
('ord001', 'ship001', 'cust001', 'stat004'),
('ord002', 'ship002', 'cust002', 'stat003'),
('ord003', 'ship001', 'cust003', 'stat002'),
('ord004', 'ship003', 'cust004', 'stat001'),
('ord005', 'ship005', 'cust005', 'stat004'),
('ord006', 'ship001', 'cust001', 'stat003'),
('ord007', 'ship004', 'cust006', 'stat003'),
('ord008', 'ship002', 'cust007', 'stat004'),
('ord009', 'ship001', 'cust008', 'stat002'),
('ord010', 'ship005', 'cust009', 'stat004'),
('ord011', 'ship003', 'cust010', 'stat001'),
('ord012', 'ship001', 'cust011', 'stat003'),
('ord013', 'ship002', 'cust012', 'stat004'),
('ord014', 'ship001', 'cust013', 'stat002'),
('ord015', 'ship004', 'cust014', 'stat003'),
('ord016', 'ship005', 'cust015', 'stat004'),
('ord017', 'ship001', 'cust016', 'stat001'),
('ord018', 'ship002', 'cust017', 'stat003'),
('ord019', 'ship003', 'cust018', 'stat004'),
('ord020', 'ship001', 'cust019', 'stat002'),
('ord021', 'ship004', 'cust020', 'stat003'),
('ord022', 'ship001', 'cust001', 'stat004'),
('ord023', 'ship002', 'cust002', 'stat001'),
('ord024', 'ship005', 'cust003', 'stat004'),
('ord025', 'ship001', 'cust004', 'stat003'),
('ord026', 'ship003', 'cust005', 'stat002'),
('ord027', 'ship001', 'cust006', 'stat004'),
('ord028', 'ship002', 'cust007', 'stat003'),
('ord029', 'ship004', 'cust008', 'stat001'),
('ord030', 'ship005', 'cust009', 'stat004');

-- Insert into order_line table (60 order items)
INSERT INTO order_line (order_id, book_id, quantity) VALUES
('ord001', 'book001', 1),
('ord001', 'book002', 2),
('ord002', 'book003', 1),
('ord003', 'book004', 3),
('ord004', 'book005', 1),
('ord005', 'book001', 2),
('ord005', 'book003', 1),
('ord006', 'book006', 1),
('ord006', 'book007', 1),
('ord007', 'book008', 2),
('ord008', 'book009', 1),
('ord009', 'book010', 1),
('ord010', 'book011', 3),
('ord011', 'book012', 1),
('ord012', 'book013', 2),
('ord013', 'book014', 1),
('ord014', 'book015', 1),
('ord015', 'book016', 2),
('ord016', 'book017', 1),
('ord017', 'book018', 3),
('ord018', 'book019', 1),
('ord019', 'book020', 2),
('ord020', 'book021', 1),
('ord021', 'book022', 1),
('ord022', 'book023', 2),
('ord023', 'book024', 1),
('ord024', 'book025', 3),
('ord025', 'book026', 1),
('ord026', 'book027', 2),
('ord027', 'book028', 1),
('ord028', 'book029', 1),
('ord029', 'book030', 2),
('ord030', 'book001', 1),
('ord002', 'book005', 1),
('ord003', 'book007', 2),
('ord004', 'book009', 1),
('ord007', 'book011', 1),
('ord008', 'book013', 2),
('ord009', 'book015', 1),
('ord010', 'book017', 3),
('ord011', 'book019', 1),
('ord012', 'book021', 2),
('ord013', 'book023', 1),
('ord014', 'book025', 1),
('ord015', 'book027', 2),
('ord016', 'book029', 1),
('ord017', 'book002', 3),
('ord018', 'book004', 1),
('ord019', 'book006', 2),
('ord020', 'book008', 1),
('ord021', 'book010', 1),
('ord022', 'book012', 2),
('ord023', 'book014', 1),
('ord024', 'book016', 3),
('ord025', 'book018', 1),
('ord026', 'book020', 2),
('ord027', 'book022', 1),
('ord028', 'book024', 1),
('ord029', 'book026', 2),
('ord030', 'book028', 1);

-- Insert into order_history table (60 history entries)
INSERT INTO order_history (history_id, order_id, timestamp, order_status_id) VALUES
('hist001', 'ord001', '2023-01-01 10:00:00', 'stat001'),
('hist002', 'ord001', '2023-01-02 11:30:00', 'stat002'),
('hist003', 'ord001', '2023-01-04 09:15:00', 'stat003'),
('hist004', 'ord001', '2023-01-06 14:20:00', 'stat004'),
('hist005', 'ord002', '2023-01-05 13:45:00', 'stat001'),
('hist006', 'ord002', '2023-01-06 16:30:00', 'stat002'),
('hist007', 'ord002', '2023-01-08 10:00:00', 'stat003'),
('hist008', 'ord003', '2023-01-10 14:00:00', 'stat001'),
('hist009', 'ord003', '2023-01-11 11:20:00', 'stat002'),
('hist010', 'ord004', '2023-01-15 09:30:00', 'stat001'),
('hist011', 'ord005', '2023-01-12 10:15:00', 'stat001'),
('hist012', 'ord005', '2023-01-13 14:45:00', 'stat002'),
('hist013', 'ord005', '2023-01-15 11:30:00', 'stat003'),
('hist014', 'ord005', '2023-01-17 16:00:00', 'stat004'),
('hist015', 'ord006', '2023-01-18 10:30:00', 'stat001'),
('hist016', 'ord006', '2023-01-19 13:15:00', 'stat002'),
('hist017', 'ord006', '2023-01-21 09:45:00', 'stat003'),
('hist018', 'ord007', '2023-01-20 14:30:00', 'stat001'),
('hist019', 'ord007', '2023-01-22 11:00:00', 'stat002'),
('hist020', 'ord007', '2023-01-24 10:15:00', 'stat003'),
('hist021', 'ord008', '2023-01-25 13:45:00', 'stat001'),
('hist022', 'ord008', '2023-01-26 16:30:00', 'stat002'),
('hist023', 'ord008', '2023-01-28 10:00:00', 'stat003'),
('hist024', 'ord008', '2023-01-30 14:20:00', 'stat004'),
('hist025', 'ord009', '2023-02-01 09:15:00', 'stat001'),
('hist026', 'ord009', '2023-02-02 11:30:00', 'stat002'),
('hist027', 'ord010', '2023-02-03 14:00:00', 'stat001'),
('hist028', 'ord010', '2023-02-04 16:45:00', 'stat002'),
('hist029', 'ord010', '2023-02-06 10:30:00', 'stat003'),
('hist030', 'ord010', '2023-02-08 13:15:00', 'stat004'),
('hist031', 'ord011', '2023-02-05 09:30:00', 'stat001'),
('hist032', 'ord012', '2023-02-07 11:00:00', 'stat001'),
('hist033', 'ord012', '2023-02-08 14:30:00', 'stat002'),
('hist034', 'ord012', '2023-02-10 10:15:00', 'stat003'),
('hist035', 'ord013', '2023-02-09 13:45:00', 'stat001'),
('hist036', 'ord013', '2023-02-10 16:00:00', 'stat002'),
('hist037', 'ord013', '2023-02-12 09:30:00', 'stat003'),
('hist038', 'ord013', '2023-02-14 14:20:00', 'stat004'),
('hist039', 'ord014', '2023-02-11 10:45:00', 'stat001'),
('hist040', 'ord014', '2023-02-12 13:15:00', 'stat002'),
('hist041', 'ord015', '2023-02-13 16:30:00', 'stat001'),
('hist042', 'ord015', '2023-02-14 11:00:00', 'stat002'),
('hist043', 'ord015', '2023-02-16 09:45:00', 'stat003'),
('hist044', 'ord016', '2023-02-15 14:15:00', 'stat001'),
('hist045', 'ord016', '2023-02-16 16:45:00', 'stat002'),
('hist046', 'ord016', '2023-02-18 10:30:00', 'stat003'),
('hist047', 'ord016', '2023-02-20 13:00:00', 'stat004'),
('hist048', 'ord017', '2023-02-17 09:15:00', 'stat001'),
('hist049', 'ord018', '2023-02-19 11:30:00', 'stat001'),
('hist050', 'ord018', '2023-02-20 14:45:00', 'stat002'),
('hist051', 'ord018', '2023-02-22 10:00:00', 'stat003'),
('hist052', 'ord019', '2023-02-21 13:15:00', 'stat001'),
('hist053', 'ord019', '2023-02-22 16:30:00', 'stat002'),
('hist054', 'ord019', '2023-02-24 09:45:00', 'stat003'),
('hist055', 'ord019', '2023-02-26 14:00:00', 'stat004'),
('hist056', 'ord020', '2023-02-23 11:15:00', 'stat001'),
('hist057', 'ord020', '2023-02-24 13:45:00', 'stat002'),
('hist058', 'ord021', '2023-02-25 16:00:00', 'stat001'),
('hist059', 'ord021', '2023-02-26 10:30:00', 'stat002'),
('hist060', 'ord021', '2023-02-28 09:15:00', 'stat003');