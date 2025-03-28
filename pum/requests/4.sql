SELECT v.Name, t.price
FROM Visitor v
INNER JOIN Ticket t ON v.ID_Visitor = t.ID_Visitor
ORDER BY t.price DESC;
