-- Session 1
BEGIN transaction isolation level read commited;
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
commit;

-- Session 2
BEGIN transaction isolation level read commited;
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
SELECT rating from pizzeria WHERE name = 'Pizza Hut';
COMMOT;