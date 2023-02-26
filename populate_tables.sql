-- add employees in Corporate branch

-- branch_id starts as null as branch.branch_id have no values
INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id)
VALUES('Dave', 'Wallace', '1967-11-17', 'M', 25000, NULL, NULL);

-- add first row to branch table
INSERT INTO branch(branch_name, mgr_id, mgr_start_date)
VALUES('Corporate', 100, '2006-02-09');

-- branch now having a row, update employee.employee_id and branch.branch_id
UPDATE employee
SET branch_id = 1
WHERE employee_id = 100;

INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id)
VALUES('Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

-- ---add employees in Scranton branch---

INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id)
VALUES('Michael', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);

INSERT INTO branch(branch_name, mgr_id, mgr_start_date)
VALUES('Scranton', 102, '1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE employee_id = 102;

INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id) 
VALUES('Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id) 
VALUES('Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id) 
VALUES('Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);

-- ---add employees in Stamford branch---

INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id)
VALUES('Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branch(branch_name, mgr_id, mgr_start_date)
VALUES('Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE employee_id = 106;

INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id)
VALUES('Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee(first_name, last_name, birth_date, sex, salary, super_id, branch_id)
VALUES('Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

-- ---populate client table---

INSERT INTO client(client_name, branch_id)
VALUES('Dunmore Highschool', 2);
INSERT INTO client(client_name, branch_id)
VALUES('Lackawana Country', 2);
INSERT INTO client(client_name, branch_id)
VALUES('FedEx', 3);
INSERT INTO client(client_name, branch_id)
VALUES('John Daly Law, LLC', 3);
INSERT INTO client(client_name, branch_id)
VALUES('Scranton Whitepages', 2);
INSERT INTO client(client_name, branch_id)
VALUES('Times Newspaper', 3);
INSERT INTO client(client_name, branch_id)
VALUES('FedEx', 2);

-- ---populate supplier table---

INSERT INTO supplier(branch_id, supplier_name, supply_type) 
VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO supplier(branch_id, supplier_name, supply_type)
VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO supplier(branch_id, supplier_name, supply_type)
VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO supplier(branch_id, supplier_name, supply_type) 
VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO supplier(branch_id, supplier_name, supply_type) 
VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO supplier(branch_id, supplier_name, supply_type) 
VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO supplier(branch_id, supplier_name, supply_type) 
VALUES(3, 'Stamford Lables', 'Custom Forms');

-- ---populate works_with table---

INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(105, 400, 55000);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(102, 401, 267000);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(108, 402, 22500);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(107, 403, 5000);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(108, 403, 12000);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(105, 404, 33000);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(107, 405, 26000);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(102, 406, 15000);
INSERT INTO works_with(employee_id, client_id, total_sales)
VALUES(105, 406, 130000);