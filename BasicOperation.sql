

select * from employees where department="Sales";
select * from employees where age between 30 and 40;

select * from employees where department="Sales" or department="Marketing";

#Pattern matching

select * from employees where name  like "%o%";

#Only not null values
select * from employees where department is not null and age is not null;

#Using in
select * from employees where department in ("Sales","Marketing");

#Not in
select * from employees where department not in ("Sales","Marketing");

#only top 5
select * from employees limit 5;

#offset mtlb agle limit ke bd ke
select * from employees limit 5 offset 5;

#Order by
select * from employees order by name;
#Desending order
select * from employees order by age desc;
#Acsending order
select * from employees order by age asc;
#Multiple order case
select * from employees order by age desc,employee_id asc;
 
