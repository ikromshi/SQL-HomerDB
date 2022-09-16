create table Student (
 id	        integer primary key autoincrement,
 firstname 	varchar(64) not null,
 lastname   varchar(64) not null,
 gpa 			  float,
 email 			varchar(128),
 major 			varchar(64)
);

create table Instructor (
	id		      integer primary key autoincrement,
  firstname 	varchar(64) not null,
	lastname 		varchar(64) not null,
	email 			varchar(64)
);

create table Course (
	id	          integer primary key autoincrement,
  courseNumber  integer not null,
  days          varchar(64),
  time          datetime,
  room          varchar(64),
  instructorID  integer not null,
 	foreign key (instructorID) references Instructor(id)

);

create table StudentToCourse (
	id	      integer primary key autoincrement,
 	studentID integer not null,
	courseID  integer not null,
	foreign key (courseID) references Course(id),
	foreign key (studentID) references Student(id)
);



