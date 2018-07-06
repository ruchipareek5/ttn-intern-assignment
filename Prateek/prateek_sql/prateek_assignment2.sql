create schema if not exists ttn_affiliation;
use ttn_affiliation;
CREATE TABLE Users (
    userid INT(20) PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(25) UNIQUE NOT NULL,
    password VARCHAR(25),
    roleid INT(20) REFERENCES Role (roleid)
);
CREATE TABLE Role (
    roleid INT(20) PRIMARY KEY,
    rolename VARCHAR(25)
);
CREATE TABLE Batch (
    bid INT(20) PRIMARY KEY,
    bname VARCHAR(25),
    start_date DATE,
    end_date DATE,
    tid INT(20) REFERENCES Users (userid),
    aid INT(20) REFERENCES Users (userid)
);
CREATE TABLE Application (
    appid INT(20) PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(25) REFERENCES Users (username),
    date_of_application DATE,
    status VARCHAR(25)
);
CREATE TABLE ApplicationComment (
    apcid INT(20) PRIMARY KEY AUTO_INCREMENT,
    comment VARCHAR(50),
    appid INT(20) REFERENCES Application (appid),
    is_active VARCHAR(25)
);


SELECT 
    *
FROM
    Batch
WHERE
    (tid = 1 AND end_date < CURDATE());
SELECT 
    *
FROM
    Batch
WHERE
    (tid = 1 AND end_date > CURDATE());
SELECT 
    *
FROM
    Batch
WHERE
    (aid = 2 AND end_date > CURDATE());
SELECT 
    *
FROM
    Batch
WHERE
    (end_date > CURDATE() AND aid = 2);
SELECT 
    *
FROM
    application
WHERE
    status = 'submit';
SELECT 
    comment
FROM
    applicationcomment
WHERE
    is_active = 'yes';


/*there must be userid as foreign key instead of username.*/ 

use ttn_affiliation;
UPDATE Users 
SET 
    password = 'ab'
WHERE
    userid = 1;

SELECT 
    bname
FROM
    Batch
WHERE
    start_date IN ('2018-2-3' , '2018-3-2');
SELECT 
    bname
FROM
    Batch
WHERE
    YEAR(start_date) BETWEEN '2018-2-3' AND '2018-3-2';

SELECT 
    tid
FROM
    batch
WHERE
    start_date BETWEEN '2018-3-1' AND '2018-3-31'
        AND start_date NOT IN ('2018-3-15' , '2018-3-25');

SELECT 
    COUNT(bname)
FROM
    Batch
WHERE
    tid = 1;
SELECT 
    COUNT(tid)
FROM
    batch
WHERE
    aid = 2;
SELECT 
    tid
FROM
    batch
WHERE
    tid IN (SELECT 
            tid
        FROM
            batch
        GROUP BY tid
        HAVING COUNT(bname) > 2);
SELECT 
    tid
FROM
    batch
WHERE
    tid IN (SELECT 
            tid
        FROM
            batch
        HAVING COUNT(bname) > 2);

SELECT 
    COUNT(aid)
FROM
    batch
GROUP BY aid;


SELECT 
    aid
FROM
    batch
GROUP BY aid
HAVING COUNT(aid) = (SELECT 
        MIN(countaid)
    FROM
        (SELECT 
            aid, COUNT(aid) AS countaid
        FROM
            batch
        GROUP BY aid) AS aidss);
        
        
        
        
select name,location from assessment_agencies join location on assessment_agencies.lid=location.lid join assessor on assessment_agencies.agid=assessor.agid join batch on assessor.assid=batch.assid  group by name having batch.assid in(SELECT assid FROM batch ORDER BY count( distinct batch.assid) DESC LIMIT 5);
        
        

SELECT 
    aid
FROM
    batch
GROUP BY aid
HAVING COUNT(aid) = (SELECT 
        MAX(countaid)
    FROM
        (SELECT 
            aid, COUNT(aid) AS countaid
        FROM
            batch
        GROUP BY aid) AS aidss);
alter table Users add turn_over bigint;

SELECT 
    AVG(turn_over)
FROM
    Users
WHERE
    roleid = 1;

SELECT 
    rolename, COUNT(userid)
FROM
    Users,
    Role
WHERE
    Users.roleid = 1
        AND Users.roleid = Role.roleid 
UNION SELECT 
    rolename, COUNT(userid)
FROM
    Users,
    Role
WHERE
    Users.roleid = 2
        AND Users.roleid = Role.roleid;

CREATE TABLE newUsers LIKE Users;

insert into newUsers (username) select username  from Users ;

SELECT 
    *
FROM
    batch
WHERE
    aid IS NULL;

SELECT 
    comment, username
FROM
    Application,
    Applicationcomment
WHERE
    Application.appid = Applicationcomment.appid;

SELECT 
    Comment, username
FROM
    Application,
    Applicationcomment
WHERE
    Application.appid = Applicationcomment.appid
        AND applicationcomment.comment IS NOT NULL;

SELECT 
    username, comment
FROM
    Application
        LEFT JOIN
    ApplicationComment ON Application.appid = Applicationcomment.appid
        AND applicationcomment.comment IS NOT NULL;

SELECT 
    username, comment
FROM
    Application
        RIGHT JOIN
    applicationcomment ON Application.appid = applicationcomment.appid
        AND applicationcomment.comment IS NOT NULL;


SELECT 
    bid, username
FROM
    Batch,
    Users
WHERE
    Batch.tid = Users.userid
        AND Users.roleid = 1
        AND aid IS NULL;

/*FULL JOIN*/

SELECT 
    username, comment
FROM
    Application
        LEFT JOIN
    ApplicationComment ON Application.appid = Applicationcomment.appid
        AND applicationcomment.comment IS NOT NULL 
UNION SELECT 
    username, comment
FROM
    Application
        RIGHT JOIN
    applicationcomment ON Application.appid = applicationcomment.appid
        AND applicationcomment.comment IS NOT NULL;
        
SELECT 
    username
FROM
    application
WHERE
    status = 'submit' 
UNION SELECT 
    username
FROM
    Users
WHERE
    turn_over = 2500;
