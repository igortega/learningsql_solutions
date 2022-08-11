-- Exercise 5-1
-- Fill in the blanks (denoted by <#>) for the following query to obtain the results that
-- follow:

SELECT e.emp_id, e.fname, e.lname, b.name
FROM employee e INNER JOIN branch b
	ON e.assigned_branch_id = b.branch_id;
    
    
-- Exercise 5-2
-- Write a query that returns the account ID for each nonbusiness customer
-- (customer.cust_type_cd = 'I') with the customer’s federal ID (customer.fed_id) and
-- the name of the product on which the account is based (product.name).

SELECT a.account_id, c.fed_id, p.name account_type
FROM account a INNER JOIN customer c 
	ON a.cust_id = c.cust_id 
    INNER JOIN product p 
    ON a.product_cd = p.product_cd
WHERE c.cust_type_cd = 'I';


-- Exercise 5-3
-- Construct a query that finds all employees whose supervisor is assigned to a different
-- department. Retrieve the employees’ ID, first name, and last name.

SELECT e.emp_id, e.fname, e.lname, b.name emp_branch, sup_e.emp_id sup_id, sup_e.fname sup_fname, sup_e.lname sup_lname, sup_b.name sup_branch
FROM employee e INNER JOIN branch b 
	ON e.assigned_branch_id = b.branch_id
    INNER JOIN employee sup_e 
    ON sup_e.emp_id = e.superior_emp_id
    AND sup_e.assigned_branch_id != e.assigned_branch_id
    INNER JOIN branch sup_b 
    ON sup_e.assigned_branch_id = sup_b.branch_id;
