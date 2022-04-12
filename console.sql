create table students(
    id int primary key ,
    name varchar(55) not null ,
    email varchar(55) unique not null ,
    birth_day date,
    gender varchar check ( gender = 'F' or gender = 'M')

);
-- date format=> yy-mm-dd ex: 2022-04-12
-- date format=> hh:ss ex:14:30:00
insert into students(id, name, email, birth_day, gender)
values (2, 'Nargiza', 'nargiza@gmail.com', '2025-05-15', 'M');
insert into students(id, name, email, birth_day, gender)
values (3, 'Kuba', 'kuba@gmail.com', '2022-05-15', 'F');

select * from students;

create table laptop(
    id int primary key,
    brand varchar not null,
    name varchar not null ,
    memory int not null ,
    cpu varchar not null
);
alter table students add  column  laptop_id int  references laptop(id);

insert into laptops(id, brand, name, memory, cpu)
values (1, 'Macbbok', 'Air 2020', 265, 'Apple chip'),
       (2, 'Acer', 'Nitro 5', 512, 'Intel');

select * from laptops;
alter table laptop rename to laptops;

update students
set laptop_id =1
where id = 1;

update students
set name = 'Tologon Tekebaev' where name = 'Tologon';

select  * from  students join laptops on students.laptop_id = laptops.id;

alter table laptops add column student_id int references students(id);

update laptops set student_id = 1 where id = 1;

alter table students drop column laptop_id;

alter table laptops drop column student_id;

create table students_laptops(
    student_id int references students(id),
    laptop_id  int references laptops(id)
);
insert into students_laptops(student_id, laptop_id)
values (1, 1),
       (1, 2);
select  * from  students s join students_laptops sl on s.id = sl.student_id
join laptops l on l.id = sl.laptop_id;




