create schema mall;

use mall;

create table if not exists stores(
	storeID int primary key,
    storeName varchar(20),
    dateOfOpening date not null
    );
    
create table if not exists sales(
	storeID int,
	foreign key(storeID) references stores(storeID),
    salesOfSixMonths bigint
    );
    
    
select *from stores;

select * from sales;

Insert into sales values(1,600000);
Insert into sales values(1,300000);
Insert into sales values(1,null);

select stores.storeID, stores.storename from stores left join sales on stores.storeID=sales.storeID;