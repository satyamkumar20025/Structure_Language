1. Display employees who belong to the IT department and have more than 3 years of experience.


2. Fetch employees who are Managers or earn more than 80,000.


3. List employees who are not active in the organization.


4. Retrieve employees whose performance rating is less than 3 and are not on PIP.


5. Find employees who joined before 2020 and earn more than 50,000.


6. Display employees whose bonus is not equal to zero.


7. Fetch employees who are not Interns and have experience greater than or equal to 5 years.

select * from employees where department ='hr'and salary >=80000;

select * from employees where department ='manager' and salary > 50000;

select * from employees where  not is_active;

select * from employees where performance_rating < 3 and  on_pip=0;

select * from employees where joining_date <'2020-01-01' and salary >=50000;

select * from employees where not bonus = 0;

select * from employees where not experience=5;




