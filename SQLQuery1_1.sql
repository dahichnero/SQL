use Education;
select * from subject;

use Education;
select * from institute;

use Education;
select distinct stipendia from student;use Education;
select distinct course from student;

use Education;
select all family, name, last_name from student order by
family, name, last_name desc;

use Education;
select all family, course, birthday from student order by
course asc, birthday desc;

use Education;
select distinct lect_id,family,name, last_name from lecturer;


use Education;
select * from student where stipendia>0 order by stipendia
desc, family asc;

use Education;
select * from student where course=1 order by family asc;

use Education;
select * from student where course in (2,3);

use Education;
select * from student where course in (2,4,5);

use Education;
select * from student where not course in (1,3);

use Education;
select distinct subject.subj_id, subj_name from
(((exam INNER JOIN nagruzka ON
nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
WHERE exam.mark=5;

use Education;
select distinct subject.subj_id, subj_name,
knowledge.hour from
(((exam INNER JOIN nagruzka ON
nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
WHERE exam.mark=2;

use Education;
select distinct student.student_id, student.name, student.family, exam.mark
from
((((((exam INNER JOIN nagruzka ON
nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
INNER JOIN parents ON exam.student_id=parents.student_id)
INNER JOIN town ON parents.town_id=town.town_id)
INNER JOIN student ON exam.student_id=student.student_id)
where exam.mark>2 AND subject.subj_name='Высшая
математика' AND town.town_name='Березовский';

use Education;
select distinct student.family, student.name, student.last_name, subject.subj_name, exam.mark
from
((((student INNER JOIN exam ON exam.student_id=student.student_id)
INNER JOIN nagruzka ON nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
where exam.mark in (3,4,5)
order by subj_name asc, mark desc, student.family asc;

use Education;
select distinct student.family, subject.subj_name,
exam.mark
from
((((student INNER JOIN exam ON exam.student_id=student.student_id)
INNER JOIN nagruzka ON nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
where exam.mark=2 AND subject.subj_name='Высшая математика'
order by student.family asc;

use Education;
select distinct student.family, medali.name_medal, institute.inst_name
from
(((medali INNER JOIN medalist ON medali.medal_id=medalist.medal_id)
INNER JOIN student ON student.student_id=medalist.student_id)
INNER JOIN institute ON institute.inst_id=student.inst_id)
where medali.medal_id=2
order by student.family asc;

use Education;
select distinct student.family, subject.subj_name,
exam.exam_date
from
((((student INNER JOIN exam ON exam.student_id=student.student_id)
INNER JOIN nagruzka ON nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
where exam.mark=2
order by subject.subj_name asc, student.family asc;

use Education;
select distinct student.family, subject.subj_name,
exam.exam_date
from
((((student INNER JOIN exam ON exam.student_id=student.student_id)
INNER JOIN nagruzka ON nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
where exam.mark=2 AND exam.exam_date in ('2019-05-24','2019-
06-13')
order by subject.subj_name asc, student.family asc;

use Education;
select distinct student.family, lecturer.family, subject.subj_name, exam.mark
from
(((((((exam INNER JOIN nagruzka ON
nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
INNER JOIN parents ON exam.student_id=parents.student_id)
INNER JOIN town ON parents.town_id=town.town_id)
INNER JOIN student ON exam.student_id=student.student_id)
INNER JOIN lecturer ON nagruzka.lect_id=lecturer.lect_id)
where exam.mark=5;

use Education;
select distinct student.family, lecturer.family, subject.subj_name, exam.mark, institute.inst_name
from
((((((((exam INNER JOIN nagruzka ON
nagruzka.nagr_id=exam.nagr_id)
INNER JOIN knowledge ON
knowledge.kvant_id=nagruzka.kvant_id)
INNER JOIN subject ON subject.subj_id=knowledge.subj_id)
INNER JOIN parents ON exam.student_id=parents.student_id)
INNER JOIN town ON parents.town_id=town.town_id)
INNER JOIN student ON exam.student_id=student.student_id)
INNER JOIN lecturer ON nagruzka.lect_id=lecturer.lect_id)
INNER JOIN institute ON student.inst_id=institute.inst_id)
where knowledge.hour>80 AND exam.mark=2;
