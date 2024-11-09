#CREATE TABLE Roles(
#	id INT PRIMARY KEY AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#	UNIQUE(name)
#);

#CREATE TABLE Users(
#	 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    first_name VARCHAR(100) NOT NULL,
#    last_name VARCHAR(100), 
#    phone_number VARCHAR(100),
#    email VARCHAR(100) NOT NULL,
#	 password VARCHAR(100) NOT NULL,
#	 role_id INT NOT NULL,
#	 FOREIGN KEY (role_id) REFERENCES Roles(id),
#    UNIQUE(phone_number),
#    UNIQUE(email),
#    UNIQUE(password)
#);

#CREATE TABLE Schools(
#	 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    address VARCHAR(255) NOT NULL,
#    UNIQUE(name),
#    UNIQUE(address)
#);

#CREATE TABLE Classes(
#    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    school_id INT NOT NULL,
#    FOREIGN KEY(school_id) REFERENCES Schools(id)
#);

#CREATE TABLE ClassStudents(
#	 class_id INT NOT NULL,
#    student_id INT NOT NULL,
#    FOREIGN KEY (class_id) REFERENCES Classes(id),
#    FOREIGN KEY (student_id) REFERENCES Users(id),
#    PRIMARY KEY (class_id, student_id)
#);

#CREATE TABLE Courses(
#	 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    teacher_id INT NOT NULL,
#    school_id INT NOT NULL,
#    FOREIGN KEY (teacher_id) REFERENCES USERS(id),
#    FOREIGN KEY (school_id) REFERENCES Schools(id),
#    UNIQUE(name, school_id)
#);

#CREATE TABLE CourseStudents(
#	 course_id INT NOT NULL,
#    student_id INT NOT NULL,
#    FOREIGN KEY (course_id) REFERENCES Courses(id),
#    FOREIGN KEY (student_id) REFERENCES Users(id),
#    PRIMARY KEY (course_id, student_id)
#);

#CREATE TABLE Grades (
#    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    student_id INT NOT NULL,
#    course_id INT NOT NULL,
#    grade DECIMAL(4, 2) NOT NULL,
#    date DATETIME NOT NULL,
#    FOREIGN KEY (student_id) REFERENCES Users(id),
#    FOREIGN KEY (course_id) REFERENCES Courses(id),
#    UNIQUE(student_id, course_id) 
#);

#CREATE TABLE SchoolReviews (
#    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    school_id INT NOT NULL,
#    user_id INT NOT NULL,
#    rating TINYINT NOT NULL, 
#    review TEXT, 
#    date DATETIME NOT NULL,
#    FOREIGN KEY (school_id) REFERENCES Schools(id), 
#    FOREIGN KEY (user_id) REFERENCES Users(id)  
#);





