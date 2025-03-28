SELECT p.Number, COUNT(e.ID_Exhibit) AS КоличествоЭкспонатов
FROM Pavilion p
JOIN Exhibit e ON p.ID_Pavilion = e.ID_Pavilion
GROUP BY p.Number
HAVING COUNT(e.ID_Exhibit) > 2;