DELETE QUESTIONS
Delete employees whose salary is less than 35000.
Delete employees joined in 2024.
Delete inactive employees from Pune.
Delete employees whose email does not contain their name.
Delete employees having experience less than department average.
Delete duplicate emails if any (keep lowest emp_id).
Delete employees whose last increment is older than 3 years.
Delete employees where name length < 4.
Delete all HR employees with salary above 42000.
Delete employees whose salary is below company average and inactive.
Delete employees joined in same year as their last increment.
Delete employees whose dept starts with 'P' and salary < 60000.
Delete employees having experience > 7 and salary < 1 lakh.
Delete records where city is NULL or blank.
Delete employees whose name contains double 'a'.
Delete all employees except top 5 highest salary.
Delete employees who never got increment after joining.
Delete employees where salary is not multiple of 5000.
Delete employees where email domain is not gmail.com.
Delete employees whose experience is greater than years since joining.


  -- DELETE
#1
delete from employees where salary < 35000;
#2
delete from employees where year(joining_date) =2024;
#3
delete from emloyees where status ='inactive'and city ='pune';
#4
#delete from employees where 
#5
#delete from employees 

#6
#delete from employees where 

#7
delete from employees where  last_increment  >3;

#8
delete from emoloyees where length(name)<4;
#9
delete from employees where dept ='hr' and salary >42000;
#10
#delete from employees where salary <(select * from employees  

#11
delete from employees where year(joining_date) > last_increment;

#12
delete from employees where dept like 'p%' and salary >60000;

#13
delete from employees where experience >7 and salary >100000; 

#14
delete from employees where city in ('null', '');

#15
delete from employees where name like '%aa';

#16 
/*delete max(salary) as m form employees 
where < (select max(salary) as m2 from employees 
where salary <(select max(salary) as m3 from employees 
where salary <(select max(salary) as m4 from employees 
where salary <(select max(salary) as m5 from employees )));
*/
#17

#18

#19

#20 
