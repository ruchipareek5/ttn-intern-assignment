create schema environment;

use environment;

create table if not exists states(
	stateName varchar(20) primary key,
    carbonEmission int,
    plasticConsumption int,
    waterWasted int,
    deforestation int
    );
    
select *from states;

select stateName from states where carbonEmission>6 or plasticConsumption>6 or waterWasted>6 or deforestation>6;