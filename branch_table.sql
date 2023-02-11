-- base table; will be pointed at by and point to the employee table
CREATE TABLE branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(30),
    mgr_id INT,
    mgr_start_date DATE
);