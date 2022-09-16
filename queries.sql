insert into Student
(firstname, lastname, gpa, email, major)
values
('alice', 'apple', 3.4, 'alice@ithaca.edu', 'CS');


select * from Instructor
join Course on Course.instructorID = Instructor.id
where Instructor.firstname like "Doug";