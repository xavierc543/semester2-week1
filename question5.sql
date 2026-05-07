-- For each student, calculate the total number of credits from courses they passed. Assume a passing grade is 40 or higher.
-- Expected Columns:
-- StudentId, FirstName, LastName, TotalCreditsPassed

SELECT s.StudentId, s.FirstName, s.LastName, SUM(c.credits) AS Total
FROM Course c
JOIN Enrolment e ON e.CourseId = c.CourseId
JOIN Student s On s.StudentId = e.StudentId
WHERE e.Grade >= 40
GROUP BY s.StudentId
