-- create schemas

CREATE DATABASE IF NOT EXISTS BikeStores;

USE BikeStores;

-- create tables total -> 11
CREATE TABLE categories (
	category_code VARCHAR (10) PRIMARY KEY,
	category_description VARCHAR (50) NOT NULL
);

CREATE TABLE brands (
	brand_code VARCHAR (10) PRIMARY KEY,
	brand_description VARCHAR (50) NOT NULL
);

CREATE TABLE products (
	product_id INT      (10) PRIMARY KEY AUTO_INCREMENT,
	product_name VARCHAR (255) NOT NULL,
	brand_code VARCHAR (10) NOT NULL,
	category_code VARCHAR (10) NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (25) NOT NULL,
	FOREIGN KEY (category_code) REFERENCES categories (category_code),
	FOREIGN KEY (brand_code) REFERENCES brands (brand_code)     
);

CREATE TABLE customers (
	customer_id INT      (10) PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (5)
);

CREATE TABLE stores (
	store_id INT (10) PRIMARY KEY AUTO_INCREMENT,
	store_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255),
	street VARCHAR (255),
	city VARCHAR (255),
	state VARCHAR (10),
	zip_code VARCHAR (5)
);

CREATE TABLE user_status (
	user_status_code VARCHAR(10) PRIMARY KEY,
	user_status_description VARCHAR(50) NOT NULL
);

CREATE TABLE staffs (
	staff_id INT      (10) PRIMARY KEY,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	email VARCHAR (255) NOT NULL UNIQUE,
	phone VARCHAR (25),
	user_status_code VARCHAR (10) NOT NULL,
	store_id INT NOT NULL,
	manager_id INT,
	FOREIGN KEY (store_id) REFERENCES stores (store_id),
	CONSTRAINT manager_id FOREIGN KEY (manager_id) REFERENCES staffs (staff_id),
	FOREIGN KEY (user_status_code) REFERENCES user_status (user_status_code)
);

CREATE TABLE order_status (
	order_status_code VARCHAR(10) PRIMARY KEY,
	order_status_description VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
	order_id INT      (10) PRIMARY KEY,
	customer_id INT,
	order_status_code VARCHAR(10) NOT NULL,
	order_date DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE,
	store_id INT NOT NULL,
	staff_id INT NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers (customer_id)     ,
	FOREIGN KEY (store_id) REFERENCES stores (store_id)     ,
	FOREIGN KEY (staff_id) REFERENCES staffs (staff_id),
	FOREIGN KEY (order_status_code) REFERENCES order_status (order_status_code)
);

CREATE TABLE order_items (
	order_id INT,
	item_id INT,
	product_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (25) NOT NULL,
	discount DECIMAL (10) NOT NULL DEFAULT 0,
	PRIMARY KEY (order_id, item_id),
	FOREIGN KEY (order_id) REFERENCES orders (order_id)     ,
	FOREIGN KEY (product_id) REFERENCES products (product_id)     
);

CREATE TABLE stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	PRIMARY KEY (store_id, product_id),
	FOREIGN KEY (store_id) REFERENCES stores (store_id)     ,
	FOREIGN KEY (product_id) REFERENCES products (product_id)     
);
