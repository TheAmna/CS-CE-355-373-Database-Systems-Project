
USE Tutorify ;
GO

-----------------------------------------
-- 1. TUTORS (3 rows)
-----------------------------------------
INSERT INTO Tutor (TutorID, Name, Email, Password, CNIC)
VALUES 
('T1', 'Ali Khan', 'ali@tutor.com', 'pass1', '11111'),
('T2', 'Sara Malik', 'sara@tutor.com', 'pass2', '22222'),
('T3', 'Bilal Ahmed', 'bilal@tutor.com', 'pass3', '33333');

-----------------------------------------
-- 2. STUDENTS (3 rows)
-----------------------------------------
INSERT INTO Student (StudentID, Name, Email, Password, CNIC)
VALUES
('S1', 'Aisha Ahmed', 'aisha@student.com', 's123', '44444'),
('S2', 'Hamza Tariq', 'hamza@student.com', 's234', '55555'),
('S3', 'Mina Raza', 'mina@student.com', 's345', '66666');

-----------------------------------------
-- 3. SUBJECTS (3 rows)
-----------------------------------------
INSERT INTO Subject (SubjectID, Name, AcademicLevel)
VALUES
('SUB1', 'Math', 'Grade 10'),
('SUB2', 'Physics', 'Grade 11'),
('SUB3', 'English', 'Grade 9');

-----------------------------------------
-- 4. EDUCATION (3 rows)
-----------------------------------------
INSERT INTO Education (TutorID, Education)
VALUES
('T1', 'BS Computer Science'),
('T2', 'MS Mathematics'),
('T3', 'BS English Literature');

-----------------------------------------
-- 5. TUTOR–STUDENT (3 rows)
-----------------------------------------
INSERT INTO TutorStudent (TutorID, StudentID)
VALUES
('T1', 'S1'),
('T2', 'S2'),
('T3', 'S3');

-----------------------------------------
-- 6. TUTOR–SUBJECT (3 rows)
-----------------------------------------
INSERT INTO TutorSubject (TutorID, SubjectID)
VALUES
('T1', 'SUB1'),
('T2', 'SUB2'),
('T3', 'SUB3');

-----------------------------------------
-- 7. STUDENT–SUBJECT (3 rows)
-----------------------------------------
INSERT INTO StudentSubject (StudentID, SubjectID)
VALUES
('S1', 'SUB1'),
('S2', 'SUB2'),
('S3', 'SUB3');

-----------------------------------------
-- 8. SESSION (3 rows)
-----------------------------------------
INSERT INTO Session (SessionID, DateTime, Status, TutorID, StudentID, SubjectID)
VALUES
('SESS1', '2025-01-01 10:00', 'Completed', 'T1', 'S1', 'SUB1'),
('SESS2', '2025-01-02 15:00', 'Pending',    'T2', 'S2', 'SUB2'),
('SESS3', '2025-01-03 12:30', 'Completed', 'T3', 'S3', 'SUB3');

-----------------------------------------
-- 9. FEEDBACK (3 rows)
-----------------------------------------
INSERT INTO Feedback (FeedbackID, Rating, Comment, TutorID, StudentID, SessionID)
VALUES
('F1', 5, 'Good', 'T1', 'S1', 'SESS1'),
('F2', 4, 'Ok',   'T2', 'S2', 'SESS2'),
('F3', 2, 'Bad',  'T3', 'S3', 'SESS3');
