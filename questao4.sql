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