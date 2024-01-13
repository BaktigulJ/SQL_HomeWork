--////////////////////////1/////////////////////--
create table clothes(
    id serial primary key,
    type varchar,
    color varchar,
    salary numeric
);

insert into clothes (type, color, salary)
values ('skirt', 'white', 34.00),
       ('dress', 'pink', 45.00),
       ('hat', 'blue', 12.00);

alter table clothes rename to wear;
alter table wear alter column salary set data type decimal;
alter table wear rename column color to colors;

--////////////////////////////2/////////////////////////////--

create table courses(
    id serial primary key,
    course_name varchar,
    salary numeric,
    address varchar
);

insert into courses(course_name, salary, address)
values ('English', 5.000, 'Grag 119'),
         ('English', 5.000, 'Grag 119');

--/////////////////////////////3////////////////////////////--

CREATE TABLE Department (department_id SERIAL PRIMARY KEY,
                         department_name VARCHAR(50) NOT NULL,
                         location VARCHAR(50)

);


CREATE TABLE Employee (employee_id SERIAL PRIMARY KEY,
                       employee_name VARCHAR(50) NOT NULL,
                       salary DECIMAL(10, 2),
                       department_id INT REFERENCES Department(department_id)
);

--//////////////////////////////4////////////////////////////////--
CREATE TABLE books (
                       id serial PRIMARY KEY,
                       title VARCHAR,
                       author VARCHAR,
                       price NUMERIC
);

INSERT INTO books (title, author, price)
VALUES
    ('The Great Gatsby', 'F. Scott Fitzgerald', 15.99),
    ('To Kill a Mockingbird', 'Harper Lee', 12.50),
    ('1984', 'George Orwell', 18.75);

--//////////////////////////////////5//////////////////////--

CREATE TABLE movies (
                        id serial PRIMARY KEY,
                        title VARCHAR,
                        director VARCHAR,
                        release_year INTEGER
);

INSERT INTO movies (title, director, release_year)
VALUES
    ('The Shawshank Redemption', 'Frank Darabont', 1994),
    ('Inception', 'Christopher Nolan', 2010),
    ('Pulp Fiction', 'Quentin Tarantino', 1994);

--////////////////////////////////6/////////////////////////////--

CREATE TABLE customers (
                           id serial PRIMARY KEY,
                           name VARCHAR,
                           email VARCHAR,
                           birth_date DATE
);

INSERT INTO customers (name, email, birth_date)
VALUES
    ('Alice Johnson', 'alice@example.com', '1990-05-15'),
    ('Bob Smith', 'bob@example.com', '1985-08-22'),
    ('Charlie Brown', 'charlie@example.com', '1998-02-10');

--////////////////////////////////////7//////////////////////////--
CREATE TABLE products (
                          id serial PRIMARY KEY,
                          product_name VARCHAR,
                          category VARCHAR,
                          price NUMERIC
);

INSERT INTO products (product_name, category, price)
VALUES
    ('Laptop', 'Electronics', 899.99),
    ('Running Shoes', 'Footwear', 69.99),
    ('Coffee Maker', 'Appliances', 49.50);

--/////////////////////////////////////8/////////////////////////--
CREATE TABLE employees (
                           id serial PRIMARY KEY,
                           first_name VARCHAR,
                           last_name VARCHAR,
                           department VARCHAR,
                           salary NUMERIC
);

INSERT INTO employees (first_name, last_name, department, salary)
VALUES
    ('John', 'Doe', 'IT', 75000.00),
    ('Jane', 'Smith', 'HR', 60000.00),
    ('Bob', 'Johnson', 'Marketing', 65000.00);

--////////////////////////////////////////9//////////////////////////////////--
CREATE TABLE orders (
                        id serial PRIMARY KEY,
                        customer_id INTEGER,
                        product_id INTEGER,
                        quantity INTEGER,
                        order_date DATE
);

INSERT INTO orders (customer_id, product_id, quantity, order_date)
VALUES
    (1, 1, 2, '2023-01-05'),
    (2, 3, 1, '2023-01-08'),
    (3, 2, 3, '2023-01-10');

--/////////////////////////////////////10///////////////////////////--
CREATE TABLE students (
                          id serial PRIMARY KEY,
                          first_name VARCHAR,
                          last_name VARCHAR,
                          birth_date DATE,
                          major VARCHAR
);

INSERT INTO students (first_name, last_name, birth_date, major)
VALUES
    ('Emily', 'Johnson', '2000-03-18', 'Computer Science'),
    ('Michael', 'Williams', '1999-07-12', 'Engineering'),
    ('Sophia', 'Smith', '2001-05-25', 'Mathematics');
