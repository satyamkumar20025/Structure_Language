
💰 2. BANKING SYSTEM

📌 Table Structure

CREATE TABLE bank_accounts (
    account_id INT,
    customer_name VARCHAR(50),
    balance INT,
    minimum_balance INT,
    kyc_status VARCHAR(20),
    account_open_date DATE,
    is_active BOOLEAN
);

📌 Test Data

INSERT INTO bank_accounts VALUES
(101, 'Ravi', 2000, 5000, 'PENDING', '2016-05-10', TRUE),
(102, 'Anita', 80000, 10000, 'APPROVED', '2019-02-18', TRUE),
(103, 'Kunal', 300000, 5000, 'REJECTED', '2015-09-25', FALSE),
(104, 'Meena', 15000, 10000, 'APPROVED', '2022-08-01', TRUE);

❓ Questions

1. Retrieve bank accounts where balance is less than minimum balance.


2. Display customers whose KYC status is pending or rejected.


3. Fetch bank accounts that are not active.


4. Find customers who opened accounts before 2018 and have balance greater than 1,00,000.



CREATE TABLE bank_accounts (
    account_id INT,
    customer_name VARCHAR(50),
    balance INT,
    minimum_balance INT,
    kyc_status VARCHAR(20),
    account_open_date DATE,
    is_active BOOLEAN
);

INSERT INTO bank_accounts VALUES
(101, 'Ravi', 2000, 5000, 'PENDING', '2016-05-10', TRUE),
(102, 'Anita', 80000, 10000, 'APPROVED', '2019-02-18', TRUE),
(103, 'Kunal', 300000, 5000, 'REJECTED', '2015-09-25', FALSE),
(104, 'Meena', 15000, 10000, 'APPROVED', '2022-08-01', TRUE);

select * from  bank_accounts;



select * from bank_accounts where balance < minimum_balance;

select * from bank_accounts where  kyc_status ='rejected';

select * from bank_accounts where not is_active;

select * from bank_accounts where account_open_date > 2018-01-01 and balance >= 1000000;




