USE polish_job_posts;
#View 1
CREATE VIEW `most valued skills by experience` AS
SELECT Skill_Name, SUM(Skill_Value) AS 'Total Value', Experience_Level, Salary_Topermanant, Currency_Type
FROM skills 
JOIN skills_has_job USING(skills_id)
JOIN job USING(Job_id)
JOIN payment USING(Payment_id)
JOIN currency USING(Currency_id)
GROUP BY Skill_Name, Experience_Level, Salary_Topermanant,Currency_Type
HAVING Salary_Topermanant > 0
ORDER BY 'Total Value' DESC;

#View 2
CREATE VIEW `average permeanant salary by experance level` AS
SELECT Experience_Level, AVG(Salary_Topermanant) AS "Average Salary",Currency_Type
FROM(job 
JOIN payment USING(Payment_id)
JOIN currency USING(Currency_id)
)
GROUP BY Experience_Level, Currency_Type
HAVING "Average Salary" >= 0
ORDER BY "Average Salary" DESC;
# View 3
CREATE VIEW `salary in location` AS
SELECT City, Country_code, Salary_Topermanant,Currency_Type, exchange_rate
FROM (SELECT City, Country_code, Salary_Topermanant,Currency_Type, exchange_rate
FROM location
JOIN job USING(Location_id)
JOIN payment USING(Payment_id)
JOIN currency USING(Currency_id)
) AS `locations table`
WHERE Salary_Topermanant > 0;
#View 4
CREATE VIEW `highest paying jobs` AS
SELECT Title,Experience_Level,Posting_Date, Salary_permanent
FROM job
JOIN payment USING(Payment_id)
JOIN currency USING(Currency_id)
WHERE Salary_permanent > 0
ORDER BY Salary_permanent DESC;
#View 5
Create View `remote only` AS
SELECT Title,Experience_Level,Posting_Date, Salary_permanent, Workplace_Type
FROM job
JOIN payment USING(Payment_id)
JOIN currency USING(Currency_id)
JOIN workplace_type USING(Workplace_Type_id)
WHERE Workplace_Type = 'remote' AND Salary_permanent > 0;