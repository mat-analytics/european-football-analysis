SELECT 
    l.name AS liga,
    COUNT(*) AS liczba_mecze,
    ROUND(AVG(m.home_team_goal + m.away_team_goal), 2) AS srednia_goli
FROM Match m
JOIN League l ON m.league_id = l.id
GROUP BY l.name
ORDER BY srednia_goli DESC;
