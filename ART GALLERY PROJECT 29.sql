create database Art;
use Art;
drop database Art; 
-- Create Artists table
CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    nationality VARCHAR(50)
);
desc artists;
-- Insert rows for Indian artists
INSERT INTO Artists (artist_id, artist_name, date_of_birth, nationality) VALUES
(1, 'Raja Ravi Varma', '1848-04-29', 'Indian'),
(2, 'Amrita Sher-Gil', '1913-01-30', 'Indian'),
(3, 'Tyeb Mehta', '1925-07-25', 'Indian'),
(4, 'Francis Newton Souza', '1924-04-12', 'Indian'),
(5, 'M.F. Husain', '1915-09-17', 'Indian'),
(6, 'S.H. Raza', '1922-02-22', 'Indian'),
(7, 'Vasudeo S. Gaitonde', '1924-04-04', 'Indian'),
(8, 'Anish Kapoor', '1954-03-12', 'Indian'),
(9, 'Bhupen Khakhar', '1934-03-10', 'Indian'),
(10, 'F.N. Souza', '1924-04-12', 'Indian'),
(11, 'Arun Kumar H.G.', '1975-09-05', 'Indian'),
(12, 'G. Subramanian', '1929-07-05', 'Indian'),
(13, 'Gopal Ghose', '1913-03-09', 'Indian'),
(14, 'Jamini Roy', '1887-04-11', 'Indian'),
(15, 'Jogen Chowdhury', '1939-02-16', 'Indian'),
(16, 'K.G. Subramanyan', '1924-02-15', 'Indian'),
(17, 'Manjit Bawa', '1941-03-15', 'Indian'),
(18, 'M.F. Husain', '1915-09-17', 'Indian'),
(19, 'Meera Mukherjee', '1928-10-06', 'Indian'),
(20, 'Nandalal Bose', '1882-12-03', 'Indian'),
(21, 'Ram Kumar', '1924-09-23', 'Indian'),
(22, 'Rameshwar Broota', '1941-07-25', 'Indian'),
(23, 'Ramkinkar Baij', '1906-05-26', 'Indian'),
(24, 'S.H. Raza', '1922-02-22', 'Indian'),
(25, 'Sakti Burman', '1935-11-09', 'Indian'),
(26, 'Sohan Qadri', '1932-11-02', 'Indian'),
(27, 'Subodh Gupta', '1964-09-22', 'Indian'),
(28, 'Tayeb Mehta', '1925-07-25', 'Indian'),
(29, 'Thota Vaikuntam', '1942-05-23', 'Indian');
select * from Artists;

-- Create Paintings table
CREATE TABLE Paintings (
    painting_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist_id INT,
    medium VARCHAR(100),
    year_created YEAR,
    price DECIMAL(10, 2),
    availability_status ENUM('Available', 'Sold', 'On loan', 'Not for sale'),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);
desc Paintings;
-- Insert rows for Indian paintings with associated artist IDs
INSERT INTO Paintings (painting_id, title, artist_id, medium, year_created, price, availability_status) VALUES
(1, 'Lady with the Lamp', 1, 'Oil on canvas', 1879, 100000.00, 'Available'),
(2, 'Self Portrait', 2, 'Oil on canvas', 1931, 1500000.00, 'Available'),
(3, 'Kali', 3, 'Oil on canvas', 1989, 800000.00, 'Available'),
(4, 'Birth', 4, 'Oil on canvas', 1963, 1200000.00, 'Sold'),
(5, 'Zameen', 5, 'Oil on canvas', 1980, 1800000.00, 'Available'),
(6, 'Bindu', 6, 'Oil on canvas', 1987, 2500000.00, 'Available'),
(7, 'Untitled', 7, 'Oil on canvas', 1968, 3000000.00, 'On loan'),
(8, 'Sky Mirror', 8, 'Stainless steel', 2006, 3500000.00, 'Not for sale'),
(9, 'Bharat Mata', 9, 'Oil on canvas', 1993, 4000000.00, 'Available'),
(10, 'Mahishasura', 10, 'Oil on canvas', 1960, 500000.00, 'Sold'),
(11, 'The Cosmic Dance', 11, 'Oil on canvas', 1971, 12000000.00, 'Available'),
(12, 'Divine Lovers', 12, 'Oil on canvas', 1957, 12000000.00, 'Available'),
(13, 'Santiniketan', 13, 'Watercolor', 1950, 900000.00, 'Available'),
(14, 'Mother and Child', 14, 'Oil on canvas', 1946, 800000.00, 'Sold'),
(15, 'Untitled', 15, 'Oil on canvas', 1982, 700000.00, 'Available'),
(16, 'The Battle of Ganga and Jamuna', 16, 'Oil on canvas', 1971, 6000000.00, 'Available'),
(17, 'Nude', 17, 'Oil on canvas', 1959, 2000000.00, 'Available'),
(18, 'Shakti', 18, 'Oil on canvas', 1960, 3000000.00, 'On loan'),
(19, 'Ganesha', 19, 'Oil on canvas', 1955, 800000.00, 'Available'),
(20, 'Mother and Child', 20, 'Bronze', 1959, 500000.00, 'Available'),
(21, 'Untitled', 21, 'Oil on canvas', 1965, 600000.00, 'Sold'),
(22, 'Varanasi', 22, 'Oil on canvas', 1951, 1200000.00, 'Available'),
(23, 'Wounds', 23, 'Oil on canvas', 1974, 3500000.00, 'Available'),
(24, 'Adi Parva', 24, 'Oil on canvas', 1971, 2500000.00, 'Available'),
(25, 'The Last Supper', 25, 'Oil on canvas', 1980, 3000000.00, 'Not for sale'),
(26, 'Shiva', 26, 'Oil on canvas', 1969, 1500000.00, 'Available'),
(27, 'Untitled', 27, 'Oil on canvas', 1988, 1800000.00, 'Available'),
(28, 'Untitled', 28, 'Oil on canvas', 1976, 800000.00, 'Available'),
(29, 'Man With His Bull', 29, 'Bronze', 1972, 500000.00, 'Available');
select * from Paintings;


-- Create Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    phone_number VARCHAR(20),
    address VARCHAR(255),
    membership_status ENUM('Regular', 'Premium', 'VIP')
);
desc Customers;

-- Insert rows for Indian customers
INSERT INTO Customers (customer_id, customer_name, email, phone_number, address, membership_status) VALUES
(101, 'Rahul Sharma', 'rahul.sharma@example.com', '+911234567890', '123 Main St, Delhi', 'Regular'),
(102, 'Priya Patel', 'priya.patel@example.com', '+919876543210', '456 Elm St, Mumbai', 'Premium'),
(103, 'Rajesh Singh', 'rajesh.singh@example.com', '+911122334455', '789 Oak St, Kolkata', 'Regular'),
(104, 'Kavita Gupta', 'kavita.gupta@example.com', '+911234567890', '987 Maple St, Bangalore', 'VIP'),
(105, 'Amit Kumar', 'amit.kumar@example.com', '+919988776655', '654 Pine St, Chennai', 'Regular'),
(106, 'Anjali Reddy', 'anjali.reddy@example.com', '+919900990099', '321 Cedar St, Hyderabad', 'Regular'),
(107, 'Sandeep Mishra', 'sandeep.mishra@example.com', '+911234567890', '234 Birch St, Pune', 'Regular'),
(108, 'Neha Malhotra', 'neha.malhotra@example.com', '+919876543210', '567 Walnut St, Jaipur', 'Premium'),
(109, 'Suresh Shah', 'suresh.shah@example.com', '+911122334455', '876 Spruce St, Ahmedabad', 'Regular'),
(110, 'Divya Verma', 'divya.verma@example.com', '+911234567890', '789 Fir St, Lucknow', 'Regular'),
(111, 'Vikram Patel', 'vikram.patel@example.com', '+919988776655', '543 Pine St, Chandigarh', 'Regular'),
(112, 'Priyanka Gupta', 'priyanka.gupta@example.com', '+919900990099', '345 Cedar St, Nagpur', 'Regular'),
(113, 'Arun Singh', 'arun.singh@example.com', '+911234567890', '876 Birch St, Indore', 'Regular'),
(114, 'Meera Joshi', 'meera.joshi@example.com', '+919876543210', '234 Elm St, Varanasi', 'VIP'),
(115, 'Sanjay Sharma', 'sanjay.sharma@example.com', '+911122334455', '567 Oak St, Bhopal', 'Regular'),
(116, 'Deepak Gupta', 'deepak.gupta@example.com', '+911234567890', '987 Maple St, Surat', 'Regular'),
(117, 'Sunita Devi', 'sunita.devi@example.com', '+919988776655', '321 Cedar St, Kanpur', 'Regular'),
(118, 'Rajiv Kumar', 'rajiv.kumar@example.com', '+919900990099', '654 Pine St, Patna', 'Regular'),
(119, 'Pooja Yadav', 'pooja.yadav@example.com', '+911234567890', '876 Spruce St, Jaipur', 'Regular'),
(120, 'Aarav Gupta', 'aarav.gupta@example.com', '+911234567891', '123 Main St, Delhi', 'Regular'),
(121, 'Ishaan Sharma', 'ishaan.sharma@example.com', '+919876543212', '456 Elm St, Mumbai', 'Premium'),
(123, 'Aanya Singh', 'aanya.singh@example.com', '+911122334456', '789 Oak St, Kolkata', 'Regular'),
(124, 'Advika Patel', 'advika.patel@example.com', '+911234567892', '987 Maple St, Bangalore', 'VIP'),
(125, 'Vivaan Kumar', 'vivaan.kumar@example.com', '+919988776656', '654 Pine St, Chennai', 'Regular'),
(126, 'Aadhya Reddy', 'aadhya.reddy@example.com', '+919900990098', '321 Cedar St, Hyderabad', 'Regular'),
(127, 'Vihaan Mishra', 'vihaan.mishra@example.com', '+911234567893', '234 Birch St, Pune', 'Regular'),
(128, 'Ritisha Malhotra', 'ritisha.malhotra@example.com', '+919876543213', '567 Walnut St, Jaipur', 'Premium'),
(129, 'Aarush Shah', 'aarush.shah@example.com', '+911122334457', '876 Spruce St, Ahmedabad', 'Regular'),
(130, 'Anaisha Verma', 'anaisha.verma@example.com', '+911234567894', '789 Fir St, Lucknow', 'Regular');
 select * from Customers;
 -- Create Images table
CREATE TABLE Images (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    painting_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (painting_id) REFERENCES Paintings(painting_id)
);
desc Images;

-- Insert rows for Indian paintings into the Images table
INSERT INTO Images (painting_id, image_url) VALUES
(1, 'https://example.com/painting1.jpg'),
(2, 'https://example.com/painting2.jpg'),
(3, 'https://example.com/painting3.jpg'),
(4, 'https://example.com/painting4.jpg'),
(5, 'https://example.com/painting5.jpg'),
(6, 'https://example.com/painting6.jpg'),
(7, 'https://example.com/painting7.jpg'),
(8, 'https://example.com/painting8.jpg'),
(9, 'https://example.com/painting9.jpg'),
(10, 'https://example.com/painting10.jpg'),
(11, 'https://example.com/painting11.jpg'),
(12, 'https://example.com/painting12.jpg'),
(13, 'https://example.com/painting13.jpg'),
(14, 'https://example.com/painting14.jpg'),
(15, 'https://example.com/painting15.jpg'),
(16, 'https://example.com/painting16.jpg'),
(17, 'https://example.com/painting17.jpg'),
(18, 'https://example.com/painting18.jpg'),
(19, 'https://example.com/painting19.jpg'),
(20, 'https://example.com/painting20.jpg'),
(21, 'https://example.com/painting21.jpg'),
(22, 'https://example.com/painting22.jpg'),
(23, 'https://example.com/painting23.jpg'),
(24, 'https://example.com/painting24.jpg'),
(25, 'https://example.com/painting25.jpg'),
(26, 'https://example.com/painting26.jpg'),
(27, 'https://example.com/painting27.jpg'),
(28, 'https://example.com/painting28.jpg'),
(29, 'https://example.com/painting29.jpg');
select * from Images;

CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    painting_id INT,
    transaction_date DATE,
    transaction_amount DECIMAL(10, 2),
    payment_method VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (painting_id) REFERENCES Paintings(painting_id)
);
desc Transactions;
-- Insert rows into the Transactions table with Indian names
INSERT INTO Transactions (customer_id, painting_id, transaction_date, transaction_amount, payment_method) VALUES
(101, 1, '2024-01-01', 1500.00, 'Credit Card'),
(102, 2, '2024-01-02', 2000.00, 'PayPal'),
(103, 3, '2024-01-03', 1800.00, 'Cash'),
(104, 4, '2024-01-04', 2200.00, 'Credit Card'),
(105, 5, '2024-01-05', 2500.00, 'PayPal'),
(106, 6, '2024-01-06', 1900.00, 'Cash'),
(107, 7, '2024-01-07', 2100.00, 'Credit Card'),
(108, 8, '2024-01-08', 1800.00, 'PayPal'),
(109, 9, '2024-01-09', 2000.00, 'Cash'),
(110, 10, '2024-01-10', 2300.00, 'Credit Card'),
(111, 11, '2024-01-11', 2200.00, 'PayPal'),
(112, 12, '2024-01-12', 2400.00, 'Cash'),
(113, 13, '2024-01-13', 2600.00, 'Credit Card'),
(114, 14, '2024-01-14', 1800.00, 'PayPal'),
(115, 15, '2024-01-15', 2100.00, 'Cash'),
(116, 16, '2024-01-16', 2200.00, 'Credit Card'),
(117, 17, '2024-01-17', 2300.00, 'PayPal'),
(118, 18, '2024-01-18', 2500.00, 'Cash'),
(119, 19, '2024-01-19', 2600.00, 'Credit Card'),
(120, 20, '2024-01-20', 2000.00, 'PayPal'),
(121, 21, '2024-01-21', 1800.00, 'Cash'),
(123, 22, '2024-01-22', 2100.00, 'Credit Card'),
(124, 23, '2024-01-23', 2200.00, 'PayPal'),
(125, 24, '2024-01-24', 2300.00, 'Cash'),
(126, 25, '2024-01-25', 2400.00, 'Credit Card'),
(127, 26, '2024-01-26', 2500.00, 'PayPal'),
(128, 27, '2024-01-27', 2600.00, 'Cash'),
(129, 28, '2024-01-28', 2700.00, 'Credit Card'),
(130, 29, '2024-01-29', 2800.00, 'PayPal');
select * from Transactions;

-- count--
-- Count Paintings by Artist:
SELECT artist_name, (SELECT COUNT(*) FROM Paintings WHERE artist_id = Artists.artist_id) AS num_paintings
FROM Artists;


-- List Customers with Premium Membership:
SELECT *
FROM Customers
WHERE membership_status = 'Premium';

-- List Artists with Paintings Sold for more than Average Price:
SELECT * FROM Artists
WHERE artist_id IN (SELECT artist_id FROM Paintings WHERE price > (SELECT AVG(price) FROM Paintings));


-- List Paintings with the Highest Price:
SELECT * FROM Paintings
WHERE price = (SELECT MAX(price) FROM Paintings);


-- Count Number of Transactions for Each Customer:
SELECT customer_id, customer_name,
       (SELECT COUNT(*) FROM Transactions WHERE customer_id = Customers.customer_id) AS num_transactions
FROM Customers;

-- JOINS
-- List Artists with the Highest Number of Paintings:
SELECT artist_name, (SELECT COUNT(*) FROM Paintings WHERE artist_id = Artists.artist_id) AS num_paintings
FROM Artists
ORDER BY num_paintings DESC
Limit 10;

-- List Paintings with their Artists' Nationalities:
SELECT p.title AS painting_title, a.nationality AS artist_nationality
FROM Paintings p
INNER JOIN Artists a ON p.artist_id = a.artist_id;


 -- List Customers with their Membership Status and Transaction Amounts:
SELECT c.customer_name, c.membership_status, t.transaction_amount
FROM Customers c
LEFT JOIN Transactions t ON c.customer_id = t.customer_id;

-- List Artists with the Titles of their Paintings and Transaction Dates:
SELECT a.artist_name, p.title AS painting_title, t.transaction_date
FROM Artists a
INNER JOIN Paintings p ON a.artist_id = p.artist_id
LEFT JOIN Transactions t ON p.painting_id = t.painting_id;


-- List Artists with their Paintings' Titles and Prices:
SELECT a.artist_name, p.title AS painting_title, p.price
FROM Artists a
INNER JOIN Paintings p ON a.artist_id = p.artist_id;












