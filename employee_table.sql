CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT = 100,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    birth_date DATE,
    sex CHAR(1),
    salary INT,
    super_id INT, -- will point to employee_id
    branch_id INT -- will point to branch_table branch_id
);

-- relating super_id to employee_id
ALTER TABLE employee ADD FOREIGN KEY(super_id)
-- when employee_id value removed, add null to super_id
REFERENCES employee(employee_id) ON DELETE SET NULL
