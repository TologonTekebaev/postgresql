create table Passport(
    id int primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    birth_day date unique,
    inn varchar (50) unique
);

create table person(
    id int primary key,
    name varchar(20) not null ,
    email varchar(40) unique
);

insert into passport(id, first_name, last_name, birth_day, inn)
values (1, 'Tologon', 'Tekebaev', '1996-03-16', '216343423543682873'),
       (2, 'Ulan', 'Kubanychbekov', '1995-01-17', '324622012433431');

select * from passport;

insert into person(id, name, email)
values (1, 'Tologon', 'tologon.tkbv@gmail.com');

select * from  person;


alter table passport add column person_id int references  person(id);
update passport
set person_id = 1
where id = 1;

alter table person add column passport_id int references passport(id);
update person
set  passport_id = 1
where id = 1;