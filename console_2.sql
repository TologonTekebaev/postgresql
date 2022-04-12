create table usaStates(
    id int primary key unique ,
    name varchar(20) not null ,
    foundation_date varchar(25) not null ,
    area varchar(30) not null ,
    capital varchar(30) not null ,
    mayor varchar(20) not null ,
    population varchar (20) not null ,
    attractions varchar(35) not null ,
    language varchar(35) not null ,
    interesting_places varchar (40)
);

alter table usaStates rename to usa_states;
alter table usa_states drop column attractions;

insert into usa_states(id, name, foundation_date, area, capital, mayor,
                       population, language, interesting_places)
                       values (1, 'Hawaii', 'August 21, 1959','28 311 km²', 'Oahu',
                               'Mitch Roth','1,416 million','Hawaii beach','Hawaiian language');

insert into usa_states(id, name, foundation_date, area, capital, mayor,
                       population, language, interesting_places)
                       values (2, 'California', 'July 1, 1949', '423 970 km²', 'Sacramento',
                               'Eric Garcetti','39,51 million','English', 'Hollywood');
insert into usa_states(id, name, foundation_date, area, capital, mayor,
                       population, language, interesting_places)
                       values (3, 'Washington', 'July 16, 1790','177 km²','Washington',
                               'Muriel Bowser', '692 683', 'English', 'Capital of USA' );

create table all_mayors_of_america(
    id int primary key ,
    mayors varchar not null
);
alter table all_mayors_of_america rename to all_moyors;
alter table all_moyors rename to all_mayors;

insert into all_mayors(id, mayors) values (1, 'Mitch Roth');
insert into all_mayors(id, mayors) values (2, 'Eric Garcetti');
insert into all_mayors(id, mayors) values (3, 'Muriel Bowser');

select * from usa_states join all_mayors on usa_states.id = all_mayors.id;
alter table usa_states add column all_mayors int references all_mayors(id);

update usa_states
set all_mayors = 1
where id = 1;

select * from all_mayors join usa_states on all_mayors.id = usa_states.id;
alter table all_mayors add column usa_states int references usa_states(id);
update all_mayors
set usa_states = 1
where id = 1;
