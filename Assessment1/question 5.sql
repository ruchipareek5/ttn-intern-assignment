create schema uber;

use uber;

create table if not exists riders(
	riderContactNo bigint primary key,
    riderName varchar(20),
    monthlyAverageRides int,
    dailyAverageRides int
    );
    
select *from riders;

select riderContactNo,riderName from riders where monthlyAverageRides>=30 or dailyAverageRides>=2;

