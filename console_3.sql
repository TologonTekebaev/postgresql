create table usa(
  id int primary key ,
  name varchar(30) not null unique ,
  president varchar(40) not null ,
  population varchar(20) not null ,
  telephoneCode varchar(20) not null ,
  continent varchar(30) not null
);
insert into usa(id, name, president, population, telephoneCode, continent)
values (1, 'USA', 'Joe Biden', '330 million', '1', 'North America');

select * from usa;

create table hawaii(
  id int primary key ,
  name varchar(20) not null ,
  area varchar(15),
  population varchar(15) not null ,
  the_largest_building varchar(20) not null
);

select * from hawaii;

insert into hawaii(id, name, area, population, the_largest_building)
values (1, 'Hawaii', '28 311 km²', '1,416 million', 'Hawaiian Center');

alter table usa add column hawaii_id int references hawaii(id);
update usa
set hawaii_id = 1
where id = 1;

create table california(
    id int primary key ,
    name varchar(40) unique ,
    area varchar(30) not null ,
    population varchar not null ,
    attractions varchar(50) unique ,
    language varchar(40) not null
);

select * from california;
insert into california(id, name, area, population, attractions, language)
values (1, 'California', '423 970 km²', '39,51 million', 'Hollywood', 'English and Spanish');

alter table usa add column california_id int references california(id);
update usa
set california_id = 1
where id = 1;



create table washington(
    id int primary key ,
    name varchar(40) not null ,
    foundation_date varchar(20) not null ,
    mayor varchar(30) not null ,
    area varchar(40) not null ,
    population varchar(30) unique ,
    attractions varchar(40) unique
);

select * from washington;

insert into washington(id, name, foundation_date, mayor, area, population, attractions)
values (1, 'Washington', 'July 16, 1790', 'Muriel Bowser', '177 km²', '692 683', 'Capital of USA');

alter table usa add column washington_id int references washington(id);
update usa
set washington_id = 1
where id = 1;

create table illinois(
    id int primary key ,
    name varchar(30) not null unique ,
    foundation_date varchar(20) not null ,
    area varchar(40) not null ,
    population varchar(30) unique ,
    climate varchar(50) not null ,
    interesting_places varchar (40) not null
);

select * from illinois;

insert into illinois(id, name, foundation_date, area, population, climate, interesting_places)
values (1, 'Illinois', 'December 3, 1818', '149 998 km²', '12500000 million', 'Wet', 'Chicago');

alter table usa add column illinois_id int references illinois(id);
update usa
set illinois_id = 1
where id = 1;

create table texas(
    id int primary key ,
    name varchar(15) not null ,
    area varchar(15) unique ,
    population varchar(25) not null ,
    capital varchar(25) not null
);

select * from texas;

alter table usa add column texas_id int references texas(id);
update usa
set texas_id = 1
where id = 1;

insert into texas(id, name, area, population, capital)
values (1, 'Texas', '695 662 km²', '29 million', 'Austin');

create table florida(
    id int primary key ,
    name varchar(20) not null ,
    area varchar(20) not null ,
    population varchar(20) not null ,
    language varchar(40) not null ,
    interesting_places varchar (40)
);
insert into florida(id, name, area, population, language, interesting_places)
values (1, 'Florida', '170 312 km²', '21500000', 'English and Spanish', 'Miami');
select * from florida;

alter table usa add column florida_id int references florida(id);
update usa
set florida_id = 1
where id = 1;

create table arizona(
    id int primary key ,
    name varchar(20) not null ,
    area varchar(20) not null ,
    population varchar(20) not null ,
    interesting_places varchar (40)
);

insert into arizona(id, name, area, population, interesting_places)
values (1, 'Arizona', '295 254 km²', 7000000, 'Grand Canyon National Park');
select * from arizona;

alter table usa add column arizona_id int references arizona(id);
update usa
set arizona_id = 1
where id = 1;

create table kentucky(
     id int primary key ,
     name varchar(30) not null unique ,
     foundation_date varchar(20) not null ,
     area varchar(40) not null ,
     population varchar(30) unique ,
     interesting_places varchar (40) not null
);

insert into kentucky(id, name, foundation_date, area, population, interesting_places)
values (2, 'Kentucky', 'June 1, 1792', '104 659 km²', '4550000', 'KFC');

alter table usa add column kentucky_id int references kentucky(id);
update usa
set kentucky_id = 1
where id = 1;

create table Kyrgyzstan(
    id int primary key ,
    capital varchar(15) not null ,
    population varchar(12) not null ,
    region varchar(20) not null
);

insert into kyrgyzstan(id, capital, population, region)
values (1, 'Bishkek', '6000000', '7');


create table region(
  id int primary key ,
  name varchar(15) not null ,
  area varchar(10) not null ,
  city varchar(10) not null
);
alter table kyrgyzstan add column region_id int references region(id);
update kyrgyzstan
    set region_id = 1
where id = 1;

alter table region add column kyrgyzstan_id int references kyrgyzstan(id);
update region
set kyrgyzstan_id = 1
where id = 1;

create table kadamjay(
  id int primary key ,
  population varchar(12) not null ,
  capital varchar(10)not null
);

insert into kadamjay(id, population, capital) values (1, '6 732', 'Kadamjay');

alter table kyrgyzstan add column kadamjay_id int references kadamjay(id);
update kyrgyzstan
    set kadamjay_id = 1
where id = 1;

alter table region add column kadamjay_id int references kadamjay(id);
update region
set kadamjay_id = 1
where id = 1;

create table talas(
  id int primary key ,
  name varchar(12) not null ,
  area varchar(10) not null
 );



