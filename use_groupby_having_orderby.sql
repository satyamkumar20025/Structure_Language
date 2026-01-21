
Q1. Find department wise total salary for employees from Delhi or Pune. Show only departments where total salary is greater than 1,50,000 and sort result by total salary descending.
Q2. Find city wise average salary for employees having experience more than 3 years. Display only cities where average salary is greater than 70,000 and order by average salary high to low.
Q3. Find project wise total hours worked excluding project Testing Tool. Show only projects where total hours are greater than 200 and order by hours ascending.
Q4. Find department wise maximum salary for employees working in Mumbai or Pune. Show only departments where maximum salary is greater than 85,000 and order by department name.
Q5. Find city wise employee count where salary is between 60,000 and 95,000. Show only cities having more than 2 employees and order by employee count descending.
Q6. Find project wise average rating where hours worked is greater than 90. Show only projects where average rating is greater than or equal to 4 and order by rating descending.
Q7. Find department wise total salary for employees having experience greater than or equal to 4. Show only departments where total salary is greater than 2,00,000 and order by total salary.
Q8. Find city wise minimum salary except city Delhi. Show only cities where minimum salary is greater than 60,000 and order by minimum salary descending.
Q9. Find project wise total bill amount where individual bill is greater than 50,000. Show only projects where total bill is greater than 1,00,000 and order by total bill.
Q10. Find department wise average experience for employees from Pune city. Show only departments where average experience is greater than 4 and order by experience descending.
Q11. Find city wise count of employees having experience greater than or equal to 4 years. Show only cities where count is greater than 1 and order by count.
Q12. Find project wise total hours worked excluding project HR Portal. Show only projects where total hours are greater than 150 and order by hours descending.
Q13. Find project wise maximum bill amount. Show only projects where maximum bill is greater than 1,00,000 and order by maximum bill.
Q14. Find department wise total salary only for departments Java and DevOps. Show only departments where total salary is greater than 1,60,000 and order by department.
Q15. Find project wise average bill amount where rating is greater than or equal to 4. Show only projects where average bill is greater than 90,000 and order b  y average bill descending.


-- create database pds;
use pds;
-- 🔹 1. CREATE TABLE – Employee

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    city VARCHAR(30),
    salary INT,
    experience INT
);


INSERT INTO Employee VALUES
(101, 'Amit',   'Java',    'Delhi',  75000, 4),
(102, 'Rohit',  'Java',    'Pune',   90000, 6),
(103, 'Neha',   'Angular', 'Delhi',  65000, 3),
(104, 'Pooja',  'Testing', 'Mumbai', 55000, 2),
(105, 'Karan',  'Java',    'Pune',   80000, 5),
(106, 'Simran', 'Angular', 'Pune',   72000, 4),
(107, 'John',   'DevOps',  'Delhi',  95000, 7),
(108, 'Ali',    'Testing', 'Delhi',  60000, 3),
(109, 'Priya',  'DevOps',  'Mumbai', 98000, 8),
(110, 'Ankit',  'Java',    'Mumbai', 70000, 3);


-- 🔹 2. CREATE TABLE – Project
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    hours_worked INT,
    rating INT,
    bill_amount INT
);


INSERT INTO Project VALUES
(1,  'Banking App', 120, 4,  90000),
(2,  'E-Commerce',  150, 5, 120000),
(3,  'HR Portal',    90, 3,  60000),
(4,  'Testing Tool', 70, 4,  40000),
(5,  'Banking App', 130, 5,  95000),
(6,  'HR Portal',   110, 4,  75000),
(7,  'Cloud Mig',   160, 5, 140000),
(8,  'Testing Tool', 80, 3,  42000),
(9,  'Cloud Mig',   170, 5, 150000),
(10, 'E-Commerce',  100, 4,  85000);

select * from employee;

select * from project;

select dept, sum(salary) as total_salary from employee where city in('delhi','pune') 
group by  dept having sum(salary) > 150000 order by total_salary desc;

select city, sum(salary) as total_salary ,avg(salary) from employee 
where experience in(3) group by city having avg(salary)<70000 order by total_salary desc;
 
 select project_name , count(hours_worked) as total_hours from project
 where project_name <>"Testion tool"
 group by project_name having count(hours_worked) >200 order by total_hours;
 
 
 select dept, max(salary) as max_salary from employee 
 where city in ('delhi','mumbai') group by dept having max(salary)<85000 order by dept;
 
 select city, count(emp_id) as total_employee from employee 
   where salary between 60000 and 95000 group by city having count(emp_id)>2 order by  total_employee desc;  

select project_name ,avg(rating) as avg_rating from project
 where hours_worked >90 group by project_name having avg(rating) >=4 order by avg_rating;
 
 
select dept, sum(salary) as total_salary from employee 
where experience >=4 group by dept having sum(salary)>200000 order by total_salary;

select city , min(salary) as min_salary from employee 
where city not in("delhi") group by city having min(salary) >60000 order by min_salary desc;

select project_name ,sum(bill_amount) as total_amount from project 
where bill_amount >50000 group by project_name having sum(bill_amount) >100000 order by total_amount;

select dept ,avg(experience) as total_experience from employee
where city in("pune") group by dept having avg(experience)>=4 order by total_experience;

select city , count(experience) as total_experience from employee
where experience >=4 group by  city having count(experience) >1 order by total_experience;

select project_name , sum(hours_worked) as total_work from project 
where project_name not in('hr portal') group by project_name having sum(hours_worked)>150 order by total_work;

select project_name , max(bill_amount) as total_amount from project 
group by project_name having max(bill_amount) >100000 order by total_amount;

select dept, sum(salary) as total_salary from employee 
where dept in('java','devops') group by dept having sum(salary)>160000 order by total_salary; 

select project_name , avg(bill_amount) as total_amount from project
where rating >=4 group by project_name having avg(bill_amount)>90000 order by total_amount;
