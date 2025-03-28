SELECT e.Title
FROM Exhibit e
WHERE e.ID_Pavilion IN (SELECT ID_Pavilion FROM Pavilion WHERE ID_Museum = (SELECT ID_Museum FROM Museum WHERE Title = 'Эрмитаж'));