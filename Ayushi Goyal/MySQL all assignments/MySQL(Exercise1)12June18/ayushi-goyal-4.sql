use ttn;

create table environment_stats(
	eid Integer primary key auto_increment,
    state_name varchar(30),
    carbon_emission double,
    plastic_consumption double,
    foreign key(state_name) references state(state_name)
);



create table state(
	sid Integer unique,
    state_name varchar(30) primary key,
    is_environment_friendly boolean
);

alter table state add column action varchar(40);

create table limits(
	lid Integer primary key auto_increment,
    state_name varchar(30),
    carbon_emission_limit double,
    plastic_consumption_limit double,
    foreign key(state_name) references state(state_name)
);

select environment_stats.state_name, environment_stats.carbon_emission, limits.carbon_emission_limit, environment_stats.plastic_consumption, limits.plastic_consumption_limit from environment_stats JOIN limits ON environment_stats.state_name = limits.state_name JOIN state ON state.state_name = limits.state_name where state.is_environment_friendly=true;