SELECT 
    l.name AS liga,
    ROUND(100.0 * SUM(CASE WHEN m.home_team_goal > m.away_team_goal THEN 1 ELSE 0 END) / COUNT(*), 1) AS procent_wygranych_gospodarz,
    ROUND(100.0 * SUM(CASE WHEN m.home_team_goal < m.away_team_goal THEN 1 ELSE 0 END) / COUNT(*), 1) AS procent_wygranych_gosc,
    ROUND(100.0 * SUM(CASE WHEN m.home_team_goal = m.away_team_goal THEN 1 ELSE 0 END) / COUNT(*), 1) AS procent_remisow
FROM Match m
JOIN League l ON m.league_id = l.id
GROUP BY l.name
ORDER BY procent_wygranych_gospodarz DESC;
