ALTER TABLE employee ADD FOREIGN KEY(branch_id)
-- if branch.branch_id is deleted, add null to employee.branch_id 
REFERENCES branch(branch_id) ON DELETE SET NULL;

ALTER TABLE branch ADD FOREIGN KEY(mgr_id)
-- if delete employee.employee_id, add null to branch.mgr_id
REFERENCES employee(employee_id) ON DELETE SET NULL;
