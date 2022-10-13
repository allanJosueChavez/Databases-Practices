--Insert
INSERT INTO teams (name, created_at, updated_at) VALUES ('Guatemala', now(), now());
INSERT INTO teams (name, created_at, updated_at) VALUES ('Costa Rica', now(), now());

--Update
UPDATE teams SET name = 'Colombia FC' WHERE name = "Colombia";
UPDATE matches SET goals_first_team = 3, goals_second_team = 0 WHERE id = 1;

--Delete
DELETE FROM teams WHERE name = 'Guatemala';
DELETE FROM cards WHERE users_id = 6;

--Unions
SELECT name FROM users
UNION
SELECT email FROM users;

--Having
SELECT COUNT(successful), (SELECT name, id from users where id = users_id)
FROM predictions
GROUP BY successful
HAVING COUNT(matches_id) > 5;

--Joins
SELECT predictions.id, team_a_winner, team_b_winner, match_tied, users.name, predictions.created_at
FROM predictions
INNER JOIN users
ON predictions.users_id = users.id;

--Exists
SELECT name
FROM matches
WHERE EXISTS
(SELECT name FROM teams WHERE name = 'Guatemala');

--Like
SELECT * FROM users
WHERE email LIKE '%gmail.com';
SELECT * FROM matches
WHERE name LIKE '%Brazil';
