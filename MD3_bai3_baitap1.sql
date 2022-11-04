use quanlysinhvien;
-- 1
select st.StudentName
from student st where st.StudentName like 'h%';

-- 2
select * from class where month(startdate) = '12';

-- 3
select * from subject where credit between 3 and 5;

-- 4
update student
set classid = 2 where StudentName = 'Hung';
-- 5
select st.StudentName,su.SubName,m.Mark
from student st join mark m on st.studentid = m.studentid join subject su on su.SubId = m.SubId
order by st.StudentName,m.mark;

select * from student;
select * from class;
select * from mark;
select * from subject;