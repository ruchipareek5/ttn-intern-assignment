# exists query here customer table has(id,last_name,first_name) and orders table has(id,product_name)
DELETE FROM orders WHERE EXISTS (SELECT * FROM customers WHERE customers.customer_id = orders.customer_id AND customers.last_name = 'Jack');
#exists query here customer table has(id,last_name,first_name) and orders table has(id,product_name)
select count(*) from orders WHERE EXISTS (SELECT * FROM customers WHERE customers.customer_id = orders.customer_id AND customers.last_name = 'Jack');
#union
select id from application union select id from application_comment;
select id from application union all select id from application_comment;
select id from application union distinct select id from application_comment;
#except
select * from application where id in(1) and id not in(select id from application_comment);
# except query here customer table has(id,last_name,first_name) and orders table has(id,product_name)
select * from customer where id in(1) and id not in(select id from orders where product_name='fruit');
# all query here customer table has(id,last_name,first_name) and orders table has(id,product_name)
select * from customer where id=all(select id from orders where product_name='mango');
select id from application union all select id from application_comment;
#intersect
select id from application where id=1 and id in (select id from application_comment where is_comment=1);
select * from application where id=1 and id in(select id from application_comment where product_name='fruit');
#some(alias for any)
select id from application where id <> some ((select id from application_comment));
select id from application where id <> some ((select id from application_comment where is_active='1'));