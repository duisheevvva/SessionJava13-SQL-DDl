-- data tuzduk
create database java13;

-- table tuzduk
create table schools
(
    id                serial primary key,
    school_name       varchar(50),
    address           varchar(50),
    count_of_students int
);

-- table ga maani berdik
insert into schools(school_name, address, count_of_students,foundation_date)
values('Peaksoft','Grajdanskaya 119',200,'2021-11-16'),
      ('ITRun','Chui 21',200,'2022-03-23');

-- table jany column koshtuk
alter table schools
    add column foundation_date date;

alter table schools
    add column email varchar(50);

-- table dan column ochurduk
alter table schools
    drop column email;

--  table tuzduk
create table students
(
    id         serial primary key,
    first_name varchar(50),
    last_name  varchar(50),
    age        int,
    school_id  int references schools (id)
);

-- table ga maani berdik
insert into students (first_name, last_name, age,email, school_id)
values ('Nurkyz','Zikirdinova',19,'nurkyz@gmail.com',1),
       ('Sabina','Malikova',19,'sabina@gmail.com',2),
       ('Nurtilek','Abdipattaev',19,'nurtilek@gmail.com',1),
       ('Sultan','Isaev',20,'sultan@gmail.com',2);

-- table ga column koshtuk
alter table students add column email varchar(50);

-- column ga constraint koshtuk
alter table students add unique (email);

-- alter table students drop constraint email;

-- column dun attyn osgorttuk
alter table students rename column email to student_email;