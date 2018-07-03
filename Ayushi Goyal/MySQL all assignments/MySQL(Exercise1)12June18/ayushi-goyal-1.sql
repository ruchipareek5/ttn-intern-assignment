use ttn;


create table sales(
	sales_id Integer primary key,
    shop_name varchar(10),
    sales_figure double,
    month Integer not null,
    year Integer not null, 
    foreign key(shop_name) references shops(shop_name)
);


create table shops(
	shop_id Integer unique not null,
    shop_name varchar(10) primary key,
    shop_owner varchar(10) not null,
    date_of_opening date not null    
);

select shops.shop_name, shops.shop_owner,shops.date_of_opening, sum(sales.sales_figure) from sales JOIN shops ON sales.shop_name = shops.shop_name where sales.month <= (select sales.month  from shops JOIN sales ON shops.shop_name = sales.shop_name where MONTH(shops.date_of_opening)+6 = sales.month group by (shops.shop_name) having sum(sales.sales_figure)> 500000);