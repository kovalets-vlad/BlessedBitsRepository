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
#	 role_id INT,
#	 FOREIGN KEY (role_id) REFERENCES Roles(id) ON DELETE SET NULL,
#    UNIQUE(phone_number),
#    UNIQUE(email),
#    UNIQUE(password),
#	 INDEX (first_name),
#	 INDEX (last_name),
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
#    FOREIGN KEY(school_id) REFERENCES Schools(id) ON DELETE CASCADE
#);

#CREATE TABLE ClassStudents(
#	 class_id INT NOT NULL,
#    student_id INT NOT NULL,
#    FOREIGN KEY (class_id) REFERENCES Classes(id) ON DELETE CASCADE,
#	 FOREIGN KEY (student_id) REFERENCES Users(id) ON DELETE CASCADE
#    PRIMARY KEY (class_id, student_id)
#);

#CREATE TABLE Courses(
#	 id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    name VARCHAR(100) NOT NULL,
#    teacher_id INT NOT NULL,
#    school_id INT NOT NULL,
#	 FOREIGN KEY (teacher_id) REFERENCES USERS(id) ON DELETE CASCADE,
#	 FOREIGN KEY (school_id) REFERENCES Schools(id) ON DELETE CASCADE
#    UNIQUE(name, school_id)
#);

#CREATE TABLE CourseStudents(
#	 course_id INT NOT NULL,
#    student_id INT NOT NULL,
#	 FOREIGN KEY (course_id) REFERENCES Courses(id) ON DELETE CASCADE,
#	 FOREIGN KEY (student_id) REFERENCES Users(id) ON DELETE CASCADE

#    PRIMARY KEY (course_id, student_id)
#);

#CREATE TABLE Grades (
#    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    student_id INT NOT NULL,
#    course_id INT NOT NULL,
#    grade DECIMAL(4, 2) NOT NULL,
#    date DATETIME NOT NULL,
#	 FOREIGN KEY (student_id) REFERENCES Users(id) ON DELETE CASCADE,
#	 FOREIGN KEY (course_id) REFERENCES Courses(id) ON DELETE CASCADE,
#    UNIQUE(student_id, course_id),
#	 INDEX (grade),
#	 INDEX (date)
#);

#CREATE TABLE SchoolReviews (
#    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
#    school_id INT NOT NULL,
#    user_id INT NOT NULL,
#    rating TINYINT NOT NULL, 
#    review TEXT, 
#    date DATETIME NOT NULL,
#	 FOREIGN KEY (school_id) REFERENCES Schools(id) ON DELETE CASCADE,
#	 FOREIGN KEY (user_id) REFERENCES Users(id) ON DELETE CASCADE,
#	 INDEX (rating),
#	 INDEX (date)
#);

#CREATE TABLE Messages (
#    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  
#    sender_id INT NOT NULL,                      
#    receiver_id INT NOT NULL,                    
#    message_text TEXT NOT NULL,                  
#    date DATETIME NOT NULL,                 
#    is_read BOOLEAN DEFAULT FALSE,                
#    FOREIGN KEY (sender_id) REFERENCES Users(id) ON DELETE CASCADE,  
#    FOREIGN KEY (receiver_id) REFERENCES Users(id) ON DELETE CASCADE, 
#    INDEX (sender_id),                          
#    INDEX (receiver_id),  
#    INDEX (date),
#    INDEX (is_read)
#);






