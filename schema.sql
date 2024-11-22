DROP DATABASE dealership;

CREATE DATABASE dealership;

CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

CREATE TABLE vehicles(
VIN INT AUTO_INCREMENT PRIMARY KEY,
SOLD boolean
);

CREATE TABLE inventory(
dealership_id INT,
VIN INT
);


CREATE TABLE sales_contracts(
id INT AUTO_INCREMENT,
VIN INT,
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE TABLE lease_contracts(
id INT AUTO_INCREMENT,
VIN INT,
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

