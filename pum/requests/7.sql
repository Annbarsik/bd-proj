SELECT p.Number, AVG(t.price) AS СредняяСтоимость
FROM Pavilion p
JOIN Ticket t ON p.ID_Pavilion = t.ID_Pavilion
GROUP BY p.Number;