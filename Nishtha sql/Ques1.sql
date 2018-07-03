Create database if not exists Mall;
use Mall;
create table userDetails
(
	User_id int primary key not null auto_increment ,
    User_name varchar(20),
    User_email varchar(20) not null,
	User_password varchar(20) not null,
    User_role varchar(10)
);

drop table User;

insert into userDetails values(1,'Nishtha','Nishtha@ttnd.com','Mall@123','Mall Owner');
insert into  userDetails (User_name,User_email,User_password,User_role) values('Gagan','Gagan@ttnd.com','Gagan@123','Shop Owner');
insert into  userDetailsser (User_name,User_email,User_password,User_role) values('Arpit','Arpit@ttnd.com','Arpit@123','Shop Owner');
insert into  userDetails (User_name,User_email,User_password,User_role) values('Surbhi','Surbhi@ttnd.com','Surbhi@123','Shop Owner');
insert into  userDetails (User_name,User_email,User_password,User_role) values('Yatin','Yatin@ttnd.com','Yatin@123','Shop Owner');

select * from User;

create table shopDetails(

Shop_id int primary key not null auto_increment,
Shop_name varchar(20),
Shop_Category varchar(20),
Shop_size_in_SqFeet int,
Shop_rent int,
Shop_Opening_date date,
ShopUser_id int references userDetails(DetailsUser_id)

);

drop table ShopDetails;
insert into ShopDetails values(1,'Apple','Electronics',1000,5000000,'2018/01/01',2);
insert into ShopDetails  (Shop_name ,Shop_Category ,Shop_size_in_SqFeet ,Shop_rent ,Shop_Opening_date ,ShopUser_id ) values ('Dominos','food',2000,6000000,'2018/02/12',3);
insert into ShopDetails  (Shop_name ,Shop_Category ,Shop_size_in_SqFeet ,Shop_rent ,Shop_Opening_date ,ShopUser_id ) values ('Levis','Clothing',1500,2500000,'2018/02/12',4);
insert into ShopDetails  (Shop_name ,Shop_Category ,Shop_size_in_SqFeet ,Shop_rent ,Shop_Opening_date ,ShopUser_id ) values ('DunkinDonuts','food',1000,200000,'2018/03/24',3);
insert into ShopDetails  (Shop_name ,Shop_Category ,Shop_size_in_SqFeet ,Shop_rent ,Shop_Opening_date ,ShopUser_id ) values ('BigBazar','Grocery',5000,1000000,'2018/01/22',5);
insert into ShopDetails  (Shop_name ,Shop_Category ,Shop_size_in_SqFeet ,Shop_rent ,Shop_Opening_date ,ShopUser_id ) values ('Mc-D','food',1000,5000000,'2018/02/11',4);

select * from ShopDetails;

create table SalesDetails(
	Sale_id int not null ,
    Product_id int references ProductDetails(Product_id),
    Quantity_Saled int,
    Profit_Percent int,
    Number_of_Discount int,
    Shop_id int references SalesDetials(Shop_id),
    Date_of_Sale date
);

insert into SalesDetails value(101,1001,20,10,0,1,'2018/02/01');
insert into SalesDetails value(102,1001,20,10,0,1,'2018/02/01');
insert into SalesDetails value(103,1001,20,10,0,1,'2018/02/01');

create table ProductDetails(
Product_id int primary key auto_increment not null,
Product_name varchar(20),
Shop_id int references ShopDetails(Shop_id),
Quantity int,
Price int 
);

drop table productDetails;
insert into productDetails values(1001,'iphone',1,200,40000);
insert into productDetails values(1002,'ipad',1,300,20000);
insert into productDetails values(1003,'iwatch',1,20,70000);
insert into productDetails values(1004,'mac air',1,400,100000);
insert into productDetails values(1005,'pizza',3,20,70000);
insert into productDetails values(1006,'burger',3,400,100000);
insert into productDetails values(1007,'jeans',4,20,70000);
insert into productDetails values(1008,'shirt',4,400,100000);


select Shop_id from productDetails  group by shop_id having sum(Price)>30000;

Select * from ShopDetails where  Shop_id = (
select Shop_id from SalesDetails group by (Shop_id)  having Product_id= (Select Product_id group by Product_id having sum(price)>50000));

select * from ShopDetails  where Shop_id = (
Select  Shop_id  From SalesDetails where Product_id=
(Select Product_id from ProductDetails group by shop_id having sum(Price)>=5000));



Select s.Shop_name ,s.shop_category,pd.product_id
from ShopDetails as s
cross join SalesDetails  as sd on s.Shop_id= sd.Shop_id
cross join ProductDetails as pd on sd.Product_id= pd.Product_id group by pd.Product_id having sum(pd.Price)>50000 ;
