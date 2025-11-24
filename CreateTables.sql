CREATE DATABASE Tutorify;
GO

USE Tutorify;
GO


CREATE TABLE Tutor (
    TutorID      VARCHAR(50) PRIMARY KEY,
    Name         VARCHAR(50),
    Email        VARCHAR(50),
    Password     VARCHAR(50),
    CNIC         VARCHAR(20)
);


CREATE TABLE Student (
    StudentID    VARCHAR(50) PRIMARY KEY,
    Name         VARCHAR(50),
    Email        VARCHAR(50),
    Password     VARCHAR(50),
    CNIC         VARCHAR(20)
);


CREATE TABLE Subject (
    SubjectID      VARCHAR(50) PRIMARY KEY,
    Name           VARCHAR(50),
    AcademicLevel  VARCHAR(50)
);


CREATE TABLE Education (
    EduID      INT IDENTITY(1,1) PRIMARY KEY,
    TutorID    VARCHAR(50),
    Education  VARCHAR(50),
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID)
);


CREATE TABLE TutorStudent (
    TutorID    VARCHAR(50),
    StudentID  VARCHAR(50),
    PRIMARY KEY (TutorID, StudentID),
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

CREATE TABLE TutorSubject (
    TutorID    VARCHAR(50),
    SubjectID  VARCHAR(50),
    PRIMARY KEY (TutorID, SubjectID),
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);


CREATE TABLE StudentSubject (
    StudentID  VARCHAR(50),
    SubjectID  VARCHAR(50),
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);


CREATE TABLE Session (
    SessionID   VARCHAR(50) PRIMARY KEY,
    DateTime    DATETIME,
    Status      VARCHAR(20),
    TutorID     VARCHAR(50),
    StudentID   VARCHAR(50),
    SubjectID   VARCHAR(50),
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subject(SubjectID)
);


CREATE TABLE Feedback (
    FeedbackID  VARCHAR(50) PRIMARY KEY,
    Rating      INT,
    Comment     VARCHAR(50),
    TutorID     VARCHAR(50),
    StudentID   VARCHAR(50),
    SessionID   VARCHAR(50),
    FOREIGN KEY (TutorID) REFERENCES Tutor(TutorID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (SessionID) REFERENCES Session(SessionID)
);
