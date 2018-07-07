use ttn;

create table resources_at_ttn(
	resource_id Integer primary key auto_increment,
    resource_name varchar(20),
    joining_date date,
    leaving_date date
);

create table projects_at_ttn(
	project_id Integer primary key auto_increment,
    project_name longtext,
	start_date date,
    end_date date,
    number_of_resources_required Integer
);

create table project_assigned_resources(
	par_id Integer primary key auto_increment,
    project_id Integer,
    resource_id Integer,
    performance varchar(20) enum(fair,good,average,excellent),
    foreign key(resource_id) references resources_at_ttn(resource_id),
    foreign key(project_id) references projects_at_ttn(project_id)
);