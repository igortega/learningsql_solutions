# Exercise 3-1
# Retrieve the employee ID, first name, and last name for all bank employees. Sort by last
# name and then by first name.

SELECT emp_id, fname, lname
FROM employee
ORDER BY lname, fname;


# Exercise 3-2
# Retrieve the account ID, customer ID, and available balance for all accounts whose
# status equals 'ACTIVE' and whose available balance is greater than $2,500.

SELECT account_id, cust_id, avail_balance
FROM account
WHERE status = 'ACTIVE'
AND avail_balance > 2500;


# Exercise 3-3
# Write a query against the account table that returns the IDs of the employees who
# opened the accounts (use the account.open_emp_id column). Include a single row for
# each distinct employee.

SELECT DISTINCT open_emp_id
FROM account;


# Exercise 3-4

SELECT p.product_cd, a.cust_id, a.avail_balance 
FROM product p INNER JOIN account a 
	ON p.product_cd = a.product_cd 
WHERE p.product_type_cd = 'ACCOUNT' 
ORDER BY p.product_cd, a.cust_id;