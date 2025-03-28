SELECT *
FROM Visitor_history
WHERE Category IN ('Студент', 'Пенсионер')
AND Date BETWEEN DATE('now', '-3 year') AND DATE('now')
LIMIT 5;