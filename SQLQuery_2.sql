SELECT First_name, Last_name, Execution
FROM tx_deathrow
  where first_name= 'Napoleon'
  AND LAST_NAME= 'Beazley'


  Select  Last_statement
  From tx_deathrow
  where first_name = 'Napoleon'
  and last_name = 'Beazley'


SELECT *
From tx_deathrow


Select first_name, last_name, execution_date, Age_at_Execution
From tx_deathrow
wHERE Age_at_Execution <= 25




SELECT First_name, Last_name, Execution
From tx_deathrow
where First_name = 'Raymond'
AND Last_name  like '%Landry%'

 SELECT COUNT(last_statement) FROM tx_deathrow
SELECT (0 IS NOT NULL) AND ('' IS NOT NULL) 
SELECT COUNT() FROM tx_deathrow
 SELECT
    COUNT(CASE WHEN county='Harris' THEN 1
        ELSE NULL END),
    COUNT(CASE WHEN county='Bexar' THEN 1
        ELSE NULL END)
FROM tx_deathrow
 SELECT COUNT() FROM tx_deathrow WHERE ex_age > 50
 SELECT COUNT() FROM tx_deathrow WHERE last_statement IS NULL
SELECT COUNT(CASE WHEN last_statement IS NULL THEN 1 ELSE NULL END) FROM tx_deathrow
SELECT COUNT() - COUNT(last_statement) FROM tx_deathrow
 SELECT MIN(ex_age), MAX(ex_age), AVG(ex_age) FROM tx_deathrow
 SELECT AVG(LENGTH(last_statement)) FROM tx_deathrow
 SELECT DISTINCT county FROM tx_deathrow
 SELECT
1.0 * COUNT(CASE WHEN Last_statement LIKE '%innocent%'
    THEN 1 ELSE NULL END) / COUNT()
FROM tx_deathrow

 SELECT
  last_statement IS NOT NULL AS has_last_statement,
  county,
  COUNT()
FROM tx_deathrow
GROUP BY has_last_statement, county
 SELECT county, COUNT()
FROM tx_deathrow
WHERE ex_age >= 50
GROUP BY county
 SELECT county
FROM tx_deathrow
WHERE ex_age >= 50
GROUP BY county
HAVING COUNT() > 2
 SELECT county FROM tx_deathrow GROUP BY county
 SELECT first_name, last_name
FROM tx_deathrow
WHERE LENGTH(last_statement) =
    (SELECT MAX(LENGTH(last_statement))
     FROM tx_deathrow)
 SELECT
  county,
  100.0 * COUNT() / (SELECT COUNT() FROM tx_deathrow)
    AS percentage
FROM tx_deathrow
GROUP BY county
ORDER BY percentage DESC