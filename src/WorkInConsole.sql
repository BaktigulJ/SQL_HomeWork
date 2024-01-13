create database java12;

create table schools(
                        id serial primary key,
                        name varchar(250),
                        address varchar(250),
                        count_of_students int
);

alter table schools add column email varchar;

alter table schools rename name to school_name;

ALTER TABLE schools ADD CONSTRAINT school_name UNIQUE (school_name);

alter table schools drop constraint school_name;

alter table schools drop column school_name;


insert into schools (address, count_of_students, email)
values
    ('Gragdanskaua 119', 43, 'cr@gmail.com');

--///////////////////////////2//////////////////////////////--

create table students(
                         id serial primary key,
                         first_name varchar,
                         last_name varchar,
                         age int,
                         school_id int references schools(id)
);
drop table students;

insert into students(first_name, last_name, age, school_id)
values
    ('Urmat', 'Aliev', 23, 1),
    ('Kamila', 'Antonova', 12, 1),
    ('Rita', 'Kirova', 23, 1);

insert into students(first_name, last_name, age, school_id)
values
    ('Lili', 'Aliev', 23, 2),
    ('Mila', 'Antonova', 12, 2),
    ('Ali', 'Kirova', 23, 2);

--///////////////////////////////3///////////////////////////--

create table animals(
                        id serial primary key,
                        animal_name varchar(250),
                        weight int,
                        height int
);
alter table animals alter column weight set data type decimal;

insert into animals(animal_name, weight, height)
values
    ('cat',5,0.25),
    ('dog',15,0.50);

--///////////////////////////////4/////////////////////--

CREATE TABLE students(
                         id SERIAL,
                         first_name VARCHAR(250),
                         last_name VARCHAR(250),
                         email VARCHAR NOT NULL UNIQUE,
                         age INT);

DROP TABLE students;

INSERT INTO students(first_name,last_name,email, age)
VALUES
    ('Adina','Kerimova', 'adina@gmail.com', 23),
    ('Nurmat','Adulov', 'nur@gmail.com', 15),
    ('Kira','Antonova', 'Kira@gmail.com', 19);

--//////////////////////////////////////5//////////////////////////--

create table author(
                       id serial primary key,
                       author_name varchar,
                       data_of_birth timestamp,
                       nationality varchar
);

alter table author add column email varchar;
alter table author drop column nationality;

alter table author add constraint email unique (email);

alter table author alter column author_name set not null;

alter table author alter column author_name set data type text;

alter table author rename to authors;

create table book(
                     id serial primary key,
                     book_name varchar,
                     published_year int,
                     author_id serial references authors(id)
);

drop table books;

alter table books alter column book_name set not null;

alter table books add constraint book_name unique(book_name);

INSERT INTO authors (author_name, data_of_birth, email)
VALUES
    ('Alina', '2000-09-09', 'alina@gmail.com'),
    ('Kira', '2002-11-11', 'kira@gmail.com');

insert into book(book_name, published_year, author_id)
values
    ('Biologi', 2021, 1),
    ('Geometry', 2020, 2),
    ('Mountains', 2021, 2),
    ('klefoi', 2021, 2),
    ('Algebra', 2021, 1),
    ('Chemistry', 2021, 1);

alter table book rename to books;

--/////////////////////////////////////6/////////////////////////--

create table employees(
                          id serial primary key,
                          name_employee varchar,
                          salary decimal,
                          address varchar
);

insert into employees(name_employee, salary, address)
values
    ('Kerim', 50.00,'Chokmorova 3'),
    ('Kerim', 49.00,'Kirova 3');

create table departments(
                            id serial primary key,
                            department_name varchar,
                            employee_id serial references employees(id)

);

insert into departments(department_name,employee_id)
values ('Mangement',1),
       ('Mangement',2);

--//////////////////////////////////////7////////////////////////////--

create database homework_sql;

create table lessons(
                        id serial primary key,
                        lesson_name varchar,
                        time_lesson decimal
);

alter table lessons rename to lessons_school;
alter table lessons_school alter column time_lesson  set data type numeric;
alter table lessons_school add column room_name varchar;
alter table lessons_school drop column time_lesson;

--///////////////////////////////////////8///////////////////////--8/////////////////////////--

create table cars(
                     id serial primary key,
                     car_name varchar not null ,
                     brand varchar not null ,
                     release_date timestamp,
                     salary numeric
);

insert into cars(car_name, brand, release_date, salary)
values ('honda', 'neznau1', '09-09-2010', 70.000),
       ('honda', 'neznau1', '09-09-2010', 70.000),
       ('fit', 'uznau', '09-09-2010', 70.000),
       ('fit', 'potom', '09-09-2010', 70.000);

--///////////////////////////////9//////////////////////////--

create table countries(
                          id serial primary key ,
                          country_name varchar not null ,
                          city varchar,
                          president_name varchar
);

insert into countries(country_name, city, president_name)
values
    ('Kurguzstan','Bishkek', 'miting1'),
    ('Kanada','fowfie', 'Chelovek2'),
    ('Russia','Moscva', 'Chelovek3');

alter table countries  add constraint city unique (city);

--/////////////////////////////////10/////////////////////////--

create table malls(
                      id serial primary key ,
                      mall_name varchar,
                      territory numeric,
                      city varchar
);
alter table malls rename to mallses;
alter table mallses alter column territory set data type decimal;
alter table mallses rename column mall_name to mall_manes;