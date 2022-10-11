---UC1 create Database---
create database Employe_Payroll

---UC2 create table---
create table Employe_Payroll
(
 Id int identity (1,1) primary key ,
 name varchar(255),
 salary int,
 startdate date 
)

---show table---
select * from Employe_Payroll
 
 --UC3-CRUD operation---
 insert into Employe_Payroll(name,salary,startdate) values('Abhi',15000,'2022-10-1');
 insert into Employe_Payroll(name,salary,startdate) values('vishal',20000,GETDATE());
  insert into Employe_Payroll(name,salary,startdate) values('alisha',20000,'2022-10-5');
   insert into Employe_Payroll(name,salary,startdate) values('suvarna',20000,'2022-10-6');

 -- UC4 retrive table ---
 select * from Employe_Payroll ---to show all data

 select id,salary,name from Employe_Payroll where name = 'abhi'--show data in ID,Salary,name columns in employr payroll DB

--UC5 retrive salary data of particular employee in a particular date of joining---
 select salary from Employe_Payroll where name = 'abhi'---to show particular data row

 select id,name,salary,startdate from Employe_Payroll where startDate between cast('2022-10-2' as date) and GETDATE();--

 --UC6 Add gender to rows--
 alter table Employe_Payroll  ADD Gender char(1);

 update Employe_Payroll set Gender='M' where Id=1;
  update Employe_Payroll set Gender='M' where Id=2;
   update Employe_Payroll 
    set Gender='F' 
     where Id in (3,4); 
	
---UC7 find sum,min,max,average of male and female---
select sum(salary) as Totalsalary from Employe_Payroll;                        --to find total salary of all gender
select sum(salary) as Totalsalary , Gender from Employe_Payroll group by gender--to find sum of salary Gender Wise
select min(salary) as OverallMinimumSalary from Employe_Payroll;               --to find Overall Minimum Salary
select min(salary) as Minimumsalary, Gender from Employe_Payroll group by gender;--to fing min salary Gender wise
select max(salary) as MaximumSalary from Employe_Payroll;                      --to find Overall Maximum Salary
select max(salary) as Maximumsalary,gender from Employe_Payroll group by gender;--to fing max salary Gender wise
select Avg(Salary) as  AvgSalary,Gender from Employe_Payroll group by Gender;   --to find average salary
select Gender, COUNT(Gender) from Employe_Payroll group by Gender;              --to find count of gender 
   
