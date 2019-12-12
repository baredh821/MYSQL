/* Schema for SQL database/table. We haven't discussed this type of file yet */
DROP DATABASE IF EXISTS EmployeDB;

/* Create database */
CREATE DATABASE EmployeDB;
USE EmployeDB;

/* Create new table with a primary key that auto-increments, and a text field */
CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT primary key,
  name VARCHAR(30) NOT NULL
);


CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT primary key,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id  int NOT NULL,
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON DELETE CASCADE
);


CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT primary key,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id  int NOT NULL,
  CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id) ON DELETE CASCADE
  manager_id int,
  CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);