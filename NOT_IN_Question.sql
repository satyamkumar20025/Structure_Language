 3️⃣ NOT IN OPERATOR 

1. Find employees not working in IT or HR.

2. Find employees not located in metro cities.

3. Find employees whose salary is NOT in standard salary slabs.

4. Find employees whose email domain is not corporate.

5. Find employees not hired in years 2019, 2020, 2021.

6. Find employees whose city is not part of company branches.

7. Find employees not eligible for appraisal.

8. Find employees whose department is not operational.

9. Find employees whose emp_id is not in attendance list.

10. Find employees whose email provider is not trusted.

11. Find employees whose salary is not approved by finance team.

12. Find employees whose city is not in northern zone.

13. Find employees whose joining month is not in Q1 or Q2.

14. Find employees whose department is not client-facing.

15. Find employees whose email domain is not in allowed domains.

16. Find employees whose phone series is not company-issued.

17. Find employees whose name is not in employee of the month list.

18. Find employees whose salary is not part of revised salary structure.

19. Find employees whose city is not in smart cities list.

20. Find employees whose department is not mapped to any project.

  
#NOt in

select * from employee where department not in ("it","hr");

select * from employee where city not in ("delhi","patna","Lucknow","gurgaon", "pune ","mumbbai");

select * from employee where email not in("gmail.com","yahoo.com","campany.com");

select * from employee where year(joining_date)not in(2019,2020,2021);

select * from employee where city not in("delhi","mumbbai","pune");

select * from employee where department not in("audit");

select * from employee where month(joining_date) not in(2021,2022,2023);

select * from employee where emp_id not in ("102");

select * from employee where email not in("gmail.com","yahoo.com","outlock.com");

select * from employee where department not in ("finance");

select * from employee where city not in("delhi","mumbbai","pune");

select * from employee where month(Joining_data) not in (1,2,3,4,5,6);

select * from employee where department not in("sales","marketing","support");

select * from employee WHERE LEFT (PHONE,3) not IN ('777','91','987');

select * from employee where emp_name not in("amit sharma","rahul","satam");

select * from employee where salary not in (75000);

select * from employee where  city not in("gaya");

select * from employee where  department not in ("Marketing");



