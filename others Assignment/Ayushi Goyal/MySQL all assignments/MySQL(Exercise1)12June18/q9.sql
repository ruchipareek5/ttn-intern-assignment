use ttn;

CREATE TABLE resources_ttn (
    resource_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    resource_name VARCHAR(20),
    joining_date DATE,
    leaving_date DATE,
    location_id INTEGER,
    FOREIGN KEY (location_id)
        REFERENCES location (location_id)
);
alter table resources_ttn add column H1_B_stamped boolean;

insert into resources_ttn values(101,'resource-1','2012-03-12',null,201,1);
insert into resources_ttn values(102,'resource-2','2012-04-12',null,201,0);
insert into resources_ttn values(103,'resource-3','2012-05-12',null,202,1);
insert into resources_ttn values(104,'resource-4','2012-06-12',null,201,1);
insert into resources_ttn values(105,'resource-5','2012-07-12',null,202,0);
insert into resources_ttn values(106,'resource-6','2012-08-12',null,202,0);
insert into resources_ttn values(107,'resource-7','2012-09-12',null,202,0);
insert into resources_ttn values(108,'resource-8','2013-03-12',null,201,1);
insert into resources_ttn values(109,'resource-9','2014-03-12',null,201,0);
insert into resources_ttn values(110,'resource-10','2015-03-12',null,202,1);

SELECT 
    *
FROM
    resources_ttn;

CREATE TABLE location (
    location_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    state VARCHAR(20),
    country VARCHAR(20)
);

insert into location values(201,'Delhi','India');
insert into location values(202,'Bangalore','India');
insert into location values(203,'Los Angeles','California');
insert into location values(204,'New York','United States');
insert into location values(205,'Sydney','Australia');

SELECT 
    *
FROM
    location;

CREATE TABLE customers_ttn (
    customer_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(20),
    location_id INTEGER,
    FOREIGN KEY (location_id)
        REFERENCES location (location_id)
);

insert into customers_ttn values(301,'Aptech Technologies',204);
insert into customers_ttn values(302,'Gori Technologies',205);
insert into customers_ttn values(303,'JK Partners',202);
insert into customers_ttn values(304,'Zolo Company',203);
insert into customers_ttn values(305,'Kangaroos Limited',205);

SELECT 
    *
FROM
    customers_ttn;

CREATE TABLE projects_on_board (
    project_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    customer_id INTEGER,
    project_name VARCHAR(20),
    project_description LONGTEXT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES customers_ttn (customer_id)
);

insert into projects_on_board values(401,301,'Rails System','automation of electronic rails','2015-12-30','2018-05-12');
insert into projects_on_board values(402,302,'Bus Ticketing','Ticket Vending machine for bus','2016-12-30','2017-05-12');
insert into projects_on_board values(403,303,'Commerical Website','website development for commercial products','2017-12-30','2018-05-12');
insert into projects_on_board values(404,304,'Maps on Sight','offline maps and route distance','2018-07-01','2019-01-31');
insert into projects_on_board values(405,305,'Epharm','pharmaceutical suggestions and delievery website','2019-12-30','2020-05-12');
UPDATE `ttn`.`projects_on_board` 
SET 
    `end_date` = '2019-05-12'
WHERE
    `project_id` = '401';

SELECT 
    *
FROM
    projects_on_board;

CREATE TABLE resources_projects (
    rp_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    project_id INTEGER,
    resource_id INTEGER,
    FOREIGN KEY (project_id)
        REFERENCES projects_on_board (project_id),
    FOREIGN KEY (resource_id)
        REFERENCES resources_ttn (resource_id)
);

insert into resources_projects values(501,401,101);
insert into resources_projects values(502,401,102);
insert into resources_projects values(503,401,103);
insert into resources_projects values(504,401,104);
insert into resources_projects values(505,402,105);
insert into resources_projects values(506,402,106);
insert into resources_projects values(507,402,107);
insert into resources_projects values(508,403,108);
insert into resources_projects values(509,403,109);
insert into resources_projects values(510,403,110);

SELECT 
    *
FROM
    resources_projects;

SELECT 
    resources_ttn.resource_id,
    resources_ttn.resource_name,
    resources_ttn.joining_date,
    resources_ttn.H1_B_stamped,
    location.state,
    location.country,
    projects_on_board.project_name,
    projects_on_board.end_date
FROM
    resources_ttn
        JOIN
    location ON location.location_id = resources_ttn.location_id
        JOIN
    resources_projects ON resources_projects.resource_id = resources_ttn.resource_id
        JOIN
    projects_on_board ON projects_on_board.project_id = resources_projects.project_id
WHERE
    resources_ttn.H1_B_stamped = 1
        AND projects_on_board.end_date <= '2018-06-30';

SELECT 
    projects_on_board.project_name,
    customers_ttn.customer_name,
    location.state,
    location.country
FROM
    projects_on_board
        JOIN
    customers_ttn ON customers_ttn.customer_id = projects_on_board.customer_id
        JOIN
    location ON location.location_id = customers_ttn.location_id
WHERE
    MONTH(projects_on_board.start_date) = 07
        AND YEAR(projects_on_board.start_date) = 2018
        AND location.state = 'Los Angeles';

SELECT 
    resources_ttn.resource_id,
    resources_ttn.resource_name,
    resources_ttn.joining_date,
    resources_ttn.H1_B_stamped,
    location.state,
    location.country,
    projects_on_board.project_name,
    projects_on_board.start_date,
    projects_on_board.end_date
FROM
    resources_ttn
        JOIN
    location ON location.location_id = resources_ttn.location_id
        JOIN
    resources_projects ON resources_projects.resource_id = resources_ttn.resource_id
        JOIN
    projects_on_board ON projects_on_board.project_id = resources_projects.project_id
WHERE
    resources_ttn.H1_B_stamped = 1
        AND CURDATE() BETWEEN projects_on_board.start_date AND projects_on_board.end_date;