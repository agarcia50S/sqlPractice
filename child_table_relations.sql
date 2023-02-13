-- relate supplier to branch
ALTER TABLE supplier 
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id) ON DELETE CASCADE;

-- relate works_with to branch and client
ALTER TABLE works_with
ADD FOREIGN KEY(employee_id) REFERENCES employee(employee_id) ON DELETE CASCADE,
ADD FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE;

-- relate client to branch
ALTER TABLE client
ADD FOREIGN KEY(branch_id)
REFERENCES branch(branch_id) ON DELETE SET NULL;