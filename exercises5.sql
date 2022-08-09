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