CREATE TABLE works_with(
    employee_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(employee_id, client_id)
);