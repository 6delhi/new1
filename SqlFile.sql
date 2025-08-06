create DATABASE student_management;
USE student_management;

CREATE TABLE courses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  course_id INT NOT NULL,
  address VARCHAR(255) NOT NULL,
  mobile VARCHAR(15) NOT NULL,
  dob DATE NOT NULL,
  FOREIGN KEY (course_id) REFERENCES courses(id)
);

INSERT INTO courses (name) VALUES
('Computer Science'),
('Electrical Engineering'),
('Mechanical Engineering'),
('Civil Engineering'),
('Business Administration');
-----------------------------------
USE student_management;

CREATE TABLE login (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL UNIQUE,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- Optional: Add a test user (password: test123)
INSERT INTO login (username, email, password) VALUES (
  'testuser',
  'test@example.com',
  'test123' -- bcrypt hash for 'test123'
);
---------------------------------------

USE student_management;
SELECT * FROM courses;
SELECT * FROM login;

