-- Select all
select * from clues;

-- Count all
select count(*) from clues;

-- Insert a clue
INSERT INTO clues (category, clue, answer, dollar_value, round, game_id, game_date, added_date)
values ('GOING HOME','The Internet loves videos of these people coming home & reuniting with their dogs,
like 'Hannah Foraker with Buddy','soldiers',200,'Jeopardy',7444,'2022-09-23','2022-09-25');

-- Delete all
delete from clues;

-- Find something specific
select * from clues where upper(clue) like upper('%bishop%');
select * from clues where category like '%BOOK%';

-- Get most recent game to store new ones
select max(game_date) from clues;
select max(game_id) from clues;

-- Fix some broken ones
select * from clues where answer like 'Jules)%';
update clues set answer = 'Jules Verne' where id = 3536;

-- Find answer frequencies
select answer, count(answer) as frequency
from clues 
group by answer 
order by count(answer) desc;

select count(distinct game_id) from clues;

select clue, answer from clues limit 10;
