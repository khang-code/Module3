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
