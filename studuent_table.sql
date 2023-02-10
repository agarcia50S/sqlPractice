DROP TABLE student;
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    student_name VARCHAR(30),
    student_major VARCHAR(30) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);

ALTER TABLE student
MODIFY student_major VARCHAR(30) DEFAULT 'undecided';

INSERT INTO student(student_major, student_name)
VALUES('bio', 'Tom');

INSERT INTO student(student_major, student_name)
VALUES('chem', 'Kate');

INSERT INTO student(student_major, student_name)
VALUES('math', 'Claire');

INSERT INTO student(student_major, student_name)
VALUES('business', 'Jack');

INSERT INTO student(student_name)
VALUES('Martha');

INSERT INTO student(student_name, student_major)
VALUES ('Gina', 'bio');

INSERT INTO student(student_name, student_major)
VALUES ('Lara', 'bio');

INSERT INTO student(student_name, student_major)
VALUES ('Peter', 'chem');