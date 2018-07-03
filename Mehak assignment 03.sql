use ttn_affiliation_body;

#union
select username, date from application where date in ('2018/12/01') 
union
select username, year from user where year in ('2018');

select username, role_id from user 
union
select roll, id from roles;

#intersect
select a.id, b.comment from application a, application_comment b  where b.is_active=1 and a.id=b.app_id;

select a.batch_name, b.id from batch a inner join  user b  on (a.assessing_id=b.id);

#except
select username, date from application where date in('2018/12/01') and  date not in('2018/12/15');

select username, role_id from user where role_id in('1') and role_id not in('0');

#some (doubt)
SELECT username, role_id FROM user WHERE role_id = some(SELECT id FROM roles WHERE id=1);

#all (doubt)
SELECT username, role_id FROM user WHERE role_id = all(SELECT id FROM roles WHERE id=1);

#exists
SELECT username,  id
FROM user
WHERE EXISTS (SELECT Batch_name FROM batch WHERE training_id=002);

SELECT username, role_id FROM user WHERE exists(SELECT id FROM roles WHERE id=2); #gives null