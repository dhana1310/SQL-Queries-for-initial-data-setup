
USE BikeStores;
-- DELETE ALL RECORDS
DELETE FROM order_items;
DELETE FROM orders;
DELETE FROM order_status;
DELETE FROM stocks;
DELETE FROM products;
DELETE FROM categories;
DELETE FROM brands;
ALTER TABLE staffs DROP FOREIGN KEY manager_id;
DELETE FROM staffs;
DELETE FROM customers;
DELETE FROM user_status;
DELETE FROM stores;



