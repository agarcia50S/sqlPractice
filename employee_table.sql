CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    birth_date DATE,
    sex CHAR(1),
    salary INT,
    super_id INT, -- will point to employee_id
    branch_id INT -- will point to branch_table branch_id
);