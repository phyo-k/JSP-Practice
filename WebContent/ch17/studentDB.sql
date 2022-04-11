USE ExerciseDB;

drop table student;

CREATE TABLE IF NOT EXISTS Student(
   num int NOT NULL,
   passwd  VARCHAR(20),
   depart  VARCHAR(20),
   name VARCHAR(30), 
   address VARCHAR(50), 
   phone VARCHAR(20),  
   email VARCHAR(30),
   PRIMARY KEY (num)
);

select * from Student;