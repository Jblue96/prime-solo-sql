--Select all users from chicago
SELECT * FROM syntax_practice;
where city = 'chicago';


--Get all users with usernames that contain the letter a.
SELECT * FROM syntax_practice WHERE username LIKE '%a%';

--The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
SELECT * FROM syntax_practice
UPDATE syntax_practice SET transactions_attempted = '0'
UPDATE syntax_practice SET account_balance = '0.00'
UPDATE syntax_practice SET account_balance = '10.00'

--Select all users that have attempted 9 or more transactions
SELECT * FROM syntax_practice where transactions_attempted = '9';



--Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice WHERE account_balance > '100.00'


--Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT

SELECT * from syntax_practice
WHERE account_balance > '350.00'
ORDER BY account_balance DESC


--Add a new record.

INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id) VALUES ('vanillaice', 'shaboygan', '10', '11', '1000.00', '9' );


--Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.

SELECT * from syntax_practice
WHERE account_balance > '0.00' and account_balance < '100.00'
ORDER BY account_balance ASC
limit 3;


--The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.

SELECT * FROM syntax_practice WHERE city = 'phoenix','miami';
delete from syntax_practice where transactions_attempted < 5;
