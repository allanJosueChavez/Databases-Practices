select name, email, status, total_points from users;
select name, email, status from users where id = 2;
select name, goals_first_team, goals_second_team, status, play_on from matches;
select name, goals_first_team, goals_second_team, status, play_on from matches where id = 2;
select team_a_winner, team_b_winner, match_tied, successful, (select name from matches where id = matches_id) as match from predictions where users_id = 3;
select team_a_winner, team_b_winner, match_tied, successful, matches_id, users_id from predictions;
select type_of_prize from prizes;
select * from prizes where type_of_prize = '$200';
select * from teams where name = 'France';

select status, count(*)  from users group by status;
select successful, count(*) from predictions group by successful;
select name, email, status, total_points from users order by created_at asc;
select name, play_on from matches order by play_on desc;
select name, email, status, total_points from users where total_points = (select max(total_points) from users);
select name, email, status, total_points from users where name = 'ADMIN';
select team_a_winner, team_b_winner, match_tied, successful, (select name from matches where id = matches_id) as match, users_id from predictions  where team_a_winner = true or team_b_winner = true