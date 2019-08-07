-- table of Nobel prize winners:
-- nobel(yr, subject, winner)

CREATE TABLE nobel (
    yr int, subject char(20), winner char(50));

-- Nobel prizes for 1950
SELECT yr, subject, winner
 FROM nobel
 WHERE yr = 1950;

-- who won the 1962 prize for Literature
SELECT winner
 FROM nobel
 WHERE yr = 1962
 AND subject = 'Literature';
 
-- Show the year and subject that won 'Albert Einstein' his prize.
SELECT yr, subject
 FROM nobel
 WHERE winner = 'Albert Einstein';

-- Give the name of the 'Peace' winners since the year 2000, including 2000.
SELECT winner
FROM nobel
WHERE yr>= 2000 AND subject = 'Peace';

-- Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.
select *
from nobel
where yr>=1980 and yr<=1989
and subject = 'Literature';

-- Show all details of the presidential winners (Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama)
SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama');

-- Show the winners with first name John
select winner
from nobel
where winner like 'John%';

-- Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
select *
from nobel
where (subject ='Physics' and yr=1980) 
or (subject ='Chemistry' and yr=1984);

-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
select *
from nobel
where yr=1980 
and subject not in ('Chemistry','Medicine');

-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) 
-- together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
select *
from nobel
where (subject = 'Medicine' AND yr<1910)
OR (subject = 'Literature' AND yr>=2004);

-- Find all details of the prize won by PETER GRÜNBERG
select *
from nobel
where winner = 'PETER GRÜNBERG';

-- Find all details of the prize won by EUGENE O'NEILL
select *
from nobel
where winner = 'EUGENE O\'NEILL';

-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
select winner, yr, subject
from nobel
where winner LIKE 'Sir%'
order by yr DESC, winner DESC;

-- Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY CASE WHEN subject IN ('Physics','Chemistry') THEN 1 ELSE 0 END, subject, winner;

