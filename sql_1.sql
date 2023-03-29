/*SQL_DDL
Первая часть.

1. Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
2.Наполнить таблицу employee 70 строками:*/

create table employees(
id serial primary key,
employee_name Varchar(50) not null);

select * from employees;

insert into employees(employee_name)
values ('Manual_QA_junior'),
       ('Manual_QA_middle'),
       ('Manual_QA_senior'),
       ('Database_Administrator'),
       ('System_Administrator'),
       ('Data_Scientist'),
       ('Backend_developer'),
       ('Frontend_developer'),
       ('Usability_Analyst'),
       ('Mobile_Developer_junior'),
       ('Mobile_Developer_middle'),
       ('Mobile_Developer_senior'),
       ('Mobile_Developer_lead'),
       ('Web_Analyst'),
       ('Webcontent_specialist'),
       ('Information_Systems_Specialist '),
       ('Systems_Engineer'),
       ('Game_Developer'),
       ('Game_Developer_lead'),
       ('Embedded_Developer'),
       ('PHP_Developer_junior'),
       ('PHP_Developer_middle'),
       ('PHP_Developer_senior'),
       ('PHP_Developer_lead'),
       ('Java_Developer_junior'),
       ('Java_Developer_middle'),
       ('Java_Developer_senior'),
       ('Java_Developer_lead'),
       ('iOS_Developer_junior'),
       ('iOS_Developer_middle'),
       ('iOS_Developer_senior'),
       ('iOS_Developer_lead'),
       ('Python_Developer_junior'),
       ('Python_Developer_middle'),
       ('Python_Developer_senior'),
       ('Python_Developer_lead'),
       ('Neural_Interface_Designer'),
       ('Swift_Developer_junior'),
       ('Swift_Developer_middle'),
       ('Swift_Developer_senior'),
       ('Swift_Developer_lead'),
       ('Software_Architect'),
       ('JavaScript_Developer_junior'),
       ('JavaScript_Developer_middle'),
       ('JavaScript_Developer_senior'),
       ('JavaScript_Developer_lead'),
       ('Kotlin_Developer_junior'),
       ('Kotlin_Developer_middle'),
       ('Kotlin_Developer_senior'),
       ('Kotlin_Developer_lead'),
       ('Data_Mining_Specialist'),
       ('Quant_Developer'),
       ('Intelligent_Systems_Developer'),
       ('C_Developer'),
       ('UI_Designer'),
       ('Android_Developer'),
       ('UX_Designer'),
       ('UX_Analyst'),
       ('Mobile_App_Tester'),
       ('DevOps_Engineer'),
       ('Product_Analyst'),
       ('Data_Engineer'),
       ('QA_Automation_Engineer_junior'),
       ('QA_Automation_Engineer_middle'),
       ('QA_Automation_Engineer_senior'),
       ('QA_Automation_Engineer_lead'),
       ('Fullstack_Developer'),
       ('VFX_Designer'),
       ('Unreal_Engine_Developer'),
       ('Tech_Lead');

select * from employees; 

/*3.Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
4.Наполнить таблицу salary 15 строками (1000 - 2500):*/

create table salary(
id serial primary key,
monthly_salary Int not null);

select * from salary;

insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
select * from salary;

/*5.Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
6.Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id:*/

create table employee_salary(
id serial primary key,
employee_id Int not null unique,
salary_id Int not null);
       
select * from employee_salary;   

insert into employee_salary(employee_id, salary_id)
values (1,5),
       (2,7),
       (3,8),
       (4,11),
       (5,9),
       (6,12),
       (7,1),
       (8,4),
       (9,1),
       (10,3),
       (11,14),
       (12,2),
       (13,6),
       (14,15),
       (15,2),
       (16,7),
       (17,9),
       (18,5),
       (19,15),
       (20,1),
       (21,12),
       (22,13),
       (23,3),
       (24,7),
       (25,8),
       (26,4),
       (27,15),
       (28,9),
       (29,10),
       (30,3),
       (71,4),
       (72,15),
       (73,7),
       (74,6),
       (75,9),
       (111,4),
       (81,5),
       (97,7),
       (88,1),
       (92,5);
      
select * from employee_salary;

/*7.Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
8.Поменять тип столба role_name с int на varchar(30)
9.Наполнить таблицу roles 20 строками:*/

create table roles(
id serial primary key,
role_name int not null unique);

select * from roles;

alter table roles
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Database_Administrator'),
       ('System_Administrator'),
       ('Data_Scientist'),
       ('Backend_developer'),
       ('Frontend_developer'),
       ('Usability_Analyst'),
       ('Mobile_Developer_junior'),
       ('Mobile_Developer_middle'),
       ('Mobile_Developer_senior'),
       ('Mobile_Developer_lead'),
       ('Web_Analyst'),
       ('Webcontent_specialist'),
       ('Java_Developer_junior'),
       ('Java_Developer_middle'),
       ('Java_Developer_senior'),
       ('Java_Developer_lead'),
       ('iOS_Developer_junior'),
       ('iOS_Developer_middle'),
       ('iOS_Developer_senior'),
       ('iOS_Developer_lead');
      
select * from roles;

/*10.Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
11.Наполнить таблицу roles_employee 40 строками:*/

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
     references employees(id),
foreign key (role_id)
     references roles(id)
); 

insert into roles_employee(employee_id, role_id)
values (1,5),
       (12,7),
       (56,19),
       (4,11),
       (37,1),
       (6,12),
       (9,17),
       (34,4),
       (45,16),
       (10,3),
       (14,1),
       (41,20),
       (32,17),
       (16,18),
       (11,9),
       (66,7),
       (17,19),
       (31,15),
       (49,5),
       (63,14),
       (44,12),
       (23,15),
       (28,3),
       (54,18),
       (25,8),
       (29,14),
       (67,15),
       (48,9),
       (39,10),
       (30,3),
       (52,8),
       (47,19),
       (64,9),
       (13,6),
       (22,7),
       (19,3),
       (5,9),
       (57,11),
       (70,7),
       (46,8);

select * from roles_employee
