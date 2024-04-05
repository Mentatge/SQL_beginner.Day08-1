-- Session 1
begin transaction isolation level READ COMMITTED;
SELECT SUM(rating) FROM pizzeria;
SELECT SUM(rating) FROM pizzeria;
commit;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 2
begin transaction isolation level READ COMMITTED;
UPDATE pizzeria SET rating = 1.0 WHERE name = 'Pizza Hut'
COMMIT;
SELECT rating from pizzeria WHERE name = 'Pizza Hut';