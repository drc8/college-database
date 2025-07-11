-- Create the College database
CREATE DATABASE College;
USE College;

-- Student Table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    date_of_birth DATE,
    enrollment_year INT
);

-- Teacher Table
CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(100)
);

-- Course Table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    teacher_id INT,
    credits INT,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);
