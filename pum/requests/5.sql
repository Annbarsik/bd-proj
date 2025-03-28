SELECT m.Title, COUNT(p.ID_Pavilion) AS КоличествоПавильонов
FROM Museum m
LEFT JOIN Pavilion p ON m.ID_Museum = p.ID_Museum
GROUP BY m.Title;