-- Session 1
begin transaction isolation level repeatable read;
UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut';
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
commit;

-- Session 2
begin transaction isolation level repeatable read;
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
SELECT rating from pizzeria WHERE name = 'Pizza Hut';
COMMOT;