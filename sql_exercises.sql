--Questão 1

SELECT COUNT("endDate") AS "currentExperiences" FROM experiences

--Questão 2

SELECT "userId" AS id, COUNT("courseId") AS educations FROM educations
GROUP BY "userId"

--Questão 3

SELECT users.name AS writer, COUNT(message) AS testimonialsCount FROM testimonials
INNER JOIN users on "writerId" = users.id
WHERE "writerId" = 435
GROUP BY "writerId", users.name

--Questão 4

SELECT MAX(salary) AS maximumSalary, roles.name AS role FROM jobs
INNER JOIN roles on "roleId"= roles.id
WHERE active = true
GROUP BY "roleId", roles.name
ORDER BY maximumSalary ASC