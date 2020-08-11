CREATE TABLE Department(
id INT PRIMARY KEY,
name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE Roles(
id INT PRIMARY KEY,
title VARCHAR(30) UNIQUE NOT NULL,
salary DECIMAL UNSIGNED NOT NULL,
department_id INT UNSIGNED NOT NULL,
  INDEX dep_ind (department_id),
  CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(id) ON
);
CREATE TABLE Employee(
id INT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT UNSIGNED NOT NULL,
INDEX role_ind (role_id),
CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES role(id),
manager_id INT UNSIGNED,
INDEX man_ind (manager_id),
CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES employee(id)
);