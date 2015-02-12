create table if not exists Students(
student_id integer primary key autoincrement,
name varchar(15) not null,
surname varchar(15) not null,
study_year smallint default 1
);

create table if not exists Lecturers(
id integer primary key autoincrement, 
name varchar(15) not null,
surname varchar(15) not null,
salary integer default 1000
);

create table if not exists Courses(
code varchar(6) primary key,
name varchar(15) not null,
num_students smallint default 15
);

create table if not exists Courses_taken(
student_id integer ,
courses_code varchar(6) ,
grade smallint default 0,
foreign key (student_id) references Students,
foreign key (courses_code) references Courses,
primary key (student_id, courses_code)
);

create table if not exists Courses_taught(
lectures_id integer,
code varchar(6),
foreign key (lectures_id) references Lecturers on update cascade,
foreign key (code) references Courses(code),
primary key (lectures_id, code)
);


