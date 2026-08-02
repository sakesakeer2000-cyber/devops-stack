USE companydb;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department VARCHAR(50)
);

INSERT INTO employees(name,email,department)
VALUES
('Sake Sakeer','sake@gmail.com','DevOps'),
('John','john@gmail.com','Developer'),
('Sara','sara@gmail.com','Testing');
