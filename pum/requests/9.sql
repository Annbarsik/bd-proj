SELECT gt.Name, gt.Middle_name, p.Number, ROW_NUMBER() OVER (PARTITION BY p.Number ORDER BY gt.Name) AS НомерЭкскурсовода
FROM Guided_tours gt
JOIN Pavilion p ON gt.ID_Pavilion = p.ID_Pavilion;