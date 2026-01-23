Increase salary by 10% for Java employees only in Delhi.
Set status = 'inactive' for employees whose experience is less than 2 years.
Add 5000 bonus to employees whose last increment year is before 2022.
Reduce salary by 15% for employees whose email domain is gmail.com and salary > 80000.
Update city to 'Gurgaon' where city is Delhi and salary < 50000.
Set salary = 60000 for all HR department employees with experience between 2 and 4.
Increase salary by 20% for top experienced employee (max experience).
Set status = 'active' if joining_date is after 2023.
Update email to lowercase for all records.
Add 1 year experience for employees joined before 2020.
Set salary = average salary of company for employees with salary < 40000.
Update dept to 'Support' where name ends with 'a'.
Increase salary by 5000 for employees whose name length is more than 5.
Set last_increment = 2024 for employees who never got increment after joining.
Make salary = salary + (experience * 1000).
Change dept to 'Java-Core' where dept='Java' and salary < 80000.
Update status='inactive' for employees not incremented in last 2 years.
Increase salary by 12% only for Pune employees except HR.
Set salary = 35000 for minimum salary employee.
Swap status active ↔ inactive for Angular department.


##1
set sql_safe_updates =0;
update employees set salary=salary *1.10 where dept ='java' and city ='delhi' and emp_id =107 ;
set sql_safe_updates =1;

##2
update employees set status ='inactive'
where experience<2;

## 3
update employee set salary = salary +5000 where last_increment<2022;

-- 4
UPDATE employee
SET salary = salary * 0.85
WHERE email LIKE '%@gmail.com'
AND salary > 80000;

-- 5
UPDATE employee
SET city = 'Gurgaon'
WHERE city = 'Delhi'
AND salary < 50000;

-- 6
UPDATE employee
SET salary = 60000
WHERE dept = 'HR'
AND experience BETWEEN 2 AND 4;

-- 7
UPDATE employee
SET salary = salary * 1.20
WHERE experience = (SELECT MAX(experience) FROM employee);

-- 8
UPDATE employee
SET status = 'active'
WHERE joining_date > '2023-01-01';

-- 9
UPDATE employee
SET email = LOWER(email);

-- 10
UPDATE employee
SET experience = experience + 1
WHERE joining_date < '2020-01-01';

-- 11
UPDATE employee
SET salary = (SELECT AVG(salary) FROM employee)
WHERE salary < 40000;

-- 12
UPDATE employee
SET dept = 'Support'
WHERE name LIKE '%a';

-- 13
UPDATE employee
SET salary = salary + 5000
WHERE LENGTH(name) > 5;

##13
update employees
set salary =salary +5000 
where name like '_____';

-- 14
UPDATE employee
SET last_increment = 2024
WHERE last_increment < YEAR(joining_date);

-- 15
UPDATE employee
SET salary = salary + (experience * 1000);

-- 16
UPDATE employee
SET dept = 'Java-Core'
WHERE dept = 'Java'
AND salary < 80000;

-- 17
UPDATE employee
SET status = 'inactive'
WHERE last_increment <= YEAR(CURDATE()) - 2;

-- 18
UPDATE employee
SET salary = salary * 1.12
WHERE city = 'Pune'
AND dept <> 'HR';

-- 19
UPDATE employee
SET salary = 35000
WHERE salary = (SELECT MIN(salary) FROM employee);


