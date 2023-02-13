CREATE TABLE supplier(
    branch_id INT,
    supplier_name VARCHAR(30),
    supply_type VARCHAR(30),
    PRIMARY KEY(branch_id, supplier_name)
);