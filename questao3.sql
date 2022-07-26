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