-- Exercise 4-1
-- Which of the transaction IDs would be returned by the following filter conditions?
-- txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount > 100)

SELECT txn_id
FROM transaction
WHERE txn_date < '2002-09-12' AND (txn_type_cd = 'CDT' OR amount > 100);


-- Exercise 4-2
-- Which of the transaction IDs would be returned by the following filter conditions?
-- account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)

SELECT txn_id
FROM transaction
WHERE account_id IN (21, 22) AND NOT (txn_type_cd = 'DBT' OR txn_date < '2004-01-01');


-- Exercise 4-3
-- Construct a query that retrieves all accounts opened in 2002.

SELECT * 
FROM account
WHERE YEAR(open_date) = 2002;


-- Exercise 4-4
-- Construct a query that finds all nonbusiness customers whose last name contains an
-- a in the second position and an e anywhere after the a.

SELECT c.cust_id, i.fname, i.lname
FROM customer c INNER JOIN individual i
	ON c.cust_id = i.cust_id
WHERE c.cust_type_cd != 'B'
	and i.lname LIKE '_a%e%';