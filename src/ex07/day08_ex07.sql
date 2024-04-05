-- SESION 1
begin;
update pizzeria set rating = 3.0  where id = 1;
update pizzeria set rating = 3.0  where id = 2;
COMMIT;


-- SESION 2
begin;
update pizzeria set rating = 3.0  where id = 1;
update pizzeria set rating = 3.0  where id = 2;
COMMIT;