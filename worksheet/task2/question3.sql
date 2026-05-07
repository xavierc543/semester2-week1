-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments

SELECT Department.DepartmentName, Count(Enrolment.EnrolmentId) As TotalEnrolments
FROM Department
JOIN Course ON Department.DepartmentId = Course.DepartmentId
Join Enrolment ON Course.CourseId = Enrolment.CourseId
GROUP BY Department.DepartmentName
