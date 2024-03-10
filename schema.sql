

CREATE TABLE Product_Category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Product (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  SKU VARCHAR(255) NOT NULL UNIQUE,
  category_id INT NOT NULL,
  price DECIMAL(10,2),
  discount_id INT,  
  inventory_id INT,  
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP,
  FOREIGN KEY (category_id) REFERENCES Product_Category(id),
  FOREIGN KEY (discount_id) REFERENCES Discount(id), 
  FOREIGN KEY (inventory_id) REFERENCES Product_Inventory(id)  
);



CREATE TABLE Product_Inventory (
  id INT AUTO_INCREMENT PRIMARY KEY,
  quantity INT NOT NULL,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);

CREATE TABLE Discount (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  discount_percent DECIMAL(10,2),
  active BOOLEAN,
  created_at TIMESTAMP,
  modified_at TIMESTAMP,
  deleted_at TIMESTAMP
);


