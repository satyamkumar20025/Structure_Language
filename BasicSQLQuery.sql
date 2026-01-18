use employeedb;

create table employee(
employee_id int primary key ,
employee_name char(50),
salary decimal, 
department varchar(20)
); 
create table student(
student_roll int primary key,
student_name char (40),
student_email varchar(50) unique
);
 show databases;
 select * from employee;
 select * from Student;
 alter table employee
 add date_of_joing date;
 
 rename table employee to employee_details;
 alter table employee modify salary decimal (10,2);
 alter table employee drop column department;
 select * from student where age > 18 ;
 CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    role VARCHAR(30),
    salary INT,
    experience INT,
    joining_date DATE,
    is_active BOOLEAN,
    performance_rating INT,
    on_pip BOOLEAN,
    bonus INT
);
INSERT INTO employees VALUES
(1, 'Amit', 'IT', 'Developer', 70000, 4, '2019-06-10', TRUE, 4, FALSE, 5000),
(2, 'Neha', 'HR', 'Manager', 90000, 8, '2017-03-15', TRUE, 5, FALSE, 10000),
(3, 'Rahul', 'Finance', 'Analyst', 45000, 2, '2021-01-20', TRUE, 2, TRUE, 0),
(4, 'Priya', 'IT', 'Intern', 20000, 1, '2023-07-01', TRUE, 3, FALSE, 0),
(5, 'Suresh', 'Operations', 'Supervisor', 60000, 6, '2018-11-05', FALSE, 3, FALSE, 8000);

alter table student
 modify age int;
INSERT INTO student  VALUES
(1, 'Amit',  'satyamkua85695@gmail.com',18),
(2, 'Neha',  'Managerkumar84849@gmail.com',18),
(3, 'Rahul',  'Analyst5637@gmail.com',18),
(4, 'Priya',  'jalkhkjkad65118@gmail.com',20),
(5, 'Prityu',  'jalkhkjkad65748@gmail.com',18);

select * from employees where department = 'hr';
select * from student order by age;
select * from student order by student_name;
select * from student order by student_email;
select * from employees order by emp_id;
select * from employees order by emp_name;
select * from employees order by department;
select * from employees order by role;
select * from employees order by salary;
select * from employees order by bonus;



 
