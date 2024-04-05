-- Session 1
BEGIN;
UPDATE pizzeria SET rating = 4.6::numeric WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;

-- Session 2
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';