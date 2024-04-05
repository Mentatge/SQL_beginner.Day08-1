-- Session 1
begin transaction isolation level SERIALIZABLE;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';
commit;
SELECT rating FROM pizzeria WHERE name = 'Pizza Hut';

-- Session 2
begin transaction isolation level SERIALIZABLE;
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;
SELECT rating from pizzeria WHERE name = 'Pizza Hut';
