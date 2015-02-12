/*alias*/
/* neki query pravi_ime?kolone AS zeljeno_ime*/
select name as Ime, surname as Prezime, study_year as Godina 
from Students
where godina > 1;

/* count*   select count(name) from Students;/



select count(name) as BrojStudenata from Students;

/*avg()*/

select avg(salary) as ProsjecnaPlata from lecturers;

/*sum() */

select sum(salary) as UkupnaPlata from lecturers;

select sum(salary) as UkupnaPlata, avg(salary) as ProsjecnaPlata from lecturers;

select name, salary from lecturers order by salary DESC;
select max(salary) as Najveca, min(salary) as Minimalna from lecturers;
select max(name) as Najveca, min(name) as Minimalna from lecturers;

/* we wanto to print the courses name and the lecturers name*/

select name as cn, lectures_id as lid from Courses
inner join Courses_taught on Courses.code = Courses_taught.code;
;

select courses.name as cn, lecturers.name as ln from Courses
inner join Courses_taught on Courses.code = Courses_taught.code
inner join lecturers on Courses_taught.lectures_id = lecturers.id;

;
/* oovo ne valja daje sve moguce kombinacije*/
select name as cn, lectures_id as lid from Courses
inner join Courses_taught;

