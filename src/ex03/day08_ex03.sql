-- Session 1
begin transaction isolation level READ COMMITTED;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
commit;

-- Session 2
begin transaction isolation level READ COMMITTED;
UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut';
COMMIT;
SELECT rating from pizzeria WHERE name = 'Pizza Hut';
