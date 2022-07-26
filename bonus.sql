SELECT s.id AS id, s.name AS school, c.name AS course, co.name AS company,
r.name AS role
FROM schools s
JOIN educations ed
ON ed."schoolId" = s.id
JOIN courses c
ON ed."courseId" =c.id
JOIN applicants a
ON ed."userId" = a."userId"
JOIN jobs j
ON a."jobId" = j.id
JOIN roles r
ON r.id = j."roleId"
JOIN companies co
ON j."companyId" = co.id
WHERE r.name = 'Software Engineer' and j."companyId" = 10