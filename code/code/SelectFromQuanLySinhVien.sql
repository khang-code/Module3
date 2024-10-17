use quanlysinhvien;
select * from student;
select * from student where status = true;
select * from subject where credit < 10;
select S.StudentID, S.StudentName, C.ClassName
from student S join Class C on S.classid = c.classid;

select S.studentId, S.studentName, c.classname 
from student s join class c on s.classid = c.classid
where c.classname= 'a1';

select s.studentid, s.studentname,sub.subname,m.mark
from student s join mark m on s.studentid join subject sub on m.SubId = sub.subid;

select s.studentid, s.studentname, m.mark
from student s join mark m on s.studentid = m.studentid join subject sub on m.subid = sub.subid;

select s.studentid, s.studentname, m.mark
from student s join mark m on s.studentid = m.studentid join subject sub on m.subid = sub.subid
where sub.subname = 'cf';
-- tim kiem tu a - z
select * from student order by studentname; 
select * from student order by Mark;
-- tim kiem tu z - a
select * from student order by studentname desc;
select * from student order by Mark desc;
-- tim kiem chu cai dau la h
select * from student where studentname like 'h%';
-- tim kiem lop bat dau vao thang 12
select * from class where startdate like '%12%';

select * from subject where credit between 3 and 5; 

update student 
set classid = 2 where studentid = 1;

