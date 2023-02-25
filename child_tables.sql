CREATE TABLE client(
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(30),
    branch_id INT
)
AUTO_INCREMENT = 400;

CREATE TABLE supplier(
    branch_id INT,
    supplier_name VARCHAR(30),
    supply_type VARCHAR(30),
    PRIMARY KEY(branch_id, supplier_name)
);

CREATE TABLE works_with(
    employee_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(employee_id, client_id)
);