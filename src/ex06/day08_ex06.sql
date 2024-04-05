-- Session 1
begin transaction isolation level REPEATABLE READ;
SELECT SUM(rating) FROM pizzeria;
SELECT SUM(rating) FROM pizzeria;
commit;
SELECT SUM(rating) FROM pizzeria;

-- Session 2
begin transaction isolation level REPEATABLE READ;
UPDATE pizzeria SET rating = 5.0 WHERE name = 'Pizza Hut'
COMMIT;
SELECT SUM(rating) FROM pizzeria;

