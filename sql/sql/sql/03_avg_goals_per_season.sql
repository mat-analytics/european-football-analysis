SELECT 
    season,
    COUNT(*) AS mecze,
    ROUND(AVG(home_team_goal + away_team_goal), 2) AS srednia_goli
FROM Match
GROUP BY season
ORDER BY season;
