--QUESTÃO 1 --
SELECT u.id, u.name, c.name AS city FROM users u
JOIN cities c
ON u."cityId" = c.id
WHERE c.name = 'Rio de Janeiro'

--QUESTÃO 2 --
SELECT t.id, u1.name as writer, u2.name as recipient, t.message FROM testimonials t
JOIN users u1
ON u1.id = t."writerId"
JOIN users u2
ON u2.id = t."recipientId"

--QUESTÃO 3 --
SELECT e."userId" AS id,u.name,
c.name AS course,
s.name AS school,
e."endDate"
FROM educations e
JOIN users u
ON e."userId" = u.id
JOIN schools s
ON e."schoolId" = s.id
JOIN courses c
ON e."courseId" = c.id
WHERE e."userId" = 30 AND e.status = 'finished'

--QUESTÃO 4 --
SELECT u.id, u.name,
r.name AS role, 
c.name AS company,
e."startDate"
FROM users u
JOIN experiences e
ON e."userId" = u.id
JOIN roles r
ON e."roleId" = r.id
JOIN companies c
ON e."companyId" = c.id
WHERE u.id = 50 AND e."endDate" IS NULL

--BÔNUS --
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