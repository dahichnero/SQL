use Education;

select * from exam;
select * from knowledge;
select * from parents;
select * from student;


use Education;
select knowledge.hour, SIN(knowledge.hour) as hours from knowledge;
use Education;
select knowledge.hour, FLOOR(knowledge.hour) as hours from knowledge;
use Education;
select knowledge.hour, CEILING(knowledge.hour) as hours from knowledge;
use Education;
select knowledge.hour, EXP(knowledge.hour) as hours from knowledge;
use Education;
select knowledge.hour, SQRT(knowledge.hour) as hours from knowledge;
use Education;
select knowledge.hour, ROUND(knowledge.hour,3) as hours from knowledge;
use Education;
select knowledge.hour, LOG(knowledge.hour) as hours from knowledge;
use Education;
select knowledge.hour, LOG10(knowledge.hour) as hours from knowledge;


use Education;
SELECT student.family, student.name, student.last_name, student.family+' '+LEFT(student.name,1)+'.'+LEFT(student.last_name,1)+'.' as FIO FROM student where LEFT(student.family,1)='П'; 

use Education;
select *, CHARINDEX('р',subject.subj_name) as indexs from subject;

use Education;
SELECT student.family, student.name, student.last_name, student.family, LEFT(student.name,1) as im, LEFT(student.last_name,1) as ot FROM student where LEFT(student.family,1)='П';

use Education;
SELECT student.family, student.name, student.last_name, student.family+LEFT(student.name,1)+LEFT(student.last_name,1) as FIO FROM student where LEFT(student.family,1)='П';

use Education;
select *, REPLACE(subject.subj_name,SUBSTRING(subject.subj_name,2,4),'Пинигина') as subs from subject;


use Education;
select *, REPLACE(subject.subj_name,SUBSTRING(subject.subj_name,2,4),'Пинигина') as subs,CHARINDEX('Пинигина', REPLACE(subject.subj_name,SUBSTRING(subject.subj_name,2,4),'Пинигина')) as indexs from subject;

use Education;
select *, SPACE(LEN(lecturer.family)*6/2)+lecturer.family+SPACE(LEN(lecturer.family)*6/2) as spaces from lecturer;

use Education;
select *, DATENAME(mm,exam.exam_date) as months_add, DATENAME(dd,exam.exam_date) as days_add, DATENAME(yy,exam.exam_date) as years_add from exam;

use Education;
DECLARE @one date, @two date;
SELECT @one = birthday FROM Student WHERE student_id = 1;
SELECT @two= birthday FROM Student WHERE student_id = 44;
select DATEDIFF(mm,@one,@two) as dates;

use Education;
select student.stipendia, POWER(student.stipendia,2) as duo_step from student;
use Education;
select knowledge.hour, POWER(knowledge.hour,2) as more_hours from knowledge;
use Education;
select knowledge.hour_pr, POWER(knowledge.hour_pr,2) as more_hours_lect from knowledge;
