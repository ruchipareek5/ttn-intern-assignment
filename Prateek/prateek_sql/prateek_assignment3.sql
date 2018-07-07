
/*UNION*/



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
    
    
 /*INTERSECT*/
 
SELECT 
    username
FROM
    Users
WHERE
    turn_over > 2200
        AND username IN (SELECT 
            username
        FROM
            application
        WHERE
            status = 'submit');
            
            
SELECT 
    tid
FROM
    batch
WHERE
    start_date < CURDATE()
        AND tid IN (SELECT 
            userid
        FROM
            Users
        WHERE
            turn_over > 2200); 
            

/*EXCEPT*/

SELECT 
    userid
FROM
    Users
WHERE
    roleid = 1
        AND userid NOT IN (SELECT 
            tid
        FROM
            batch
        WHERE
            end_date < CURDATE());


SELECT 
    username
FROM
    application
WHERE
    status = 'submit'
        AND username NOT IN (SELECT 
            username
        FROM
            Users
        WHERE
            roleid = 2);



/*SOME*/

SELECT 
    username
FROM
    Users
WHERE
    username <> SOME (SELECT 
            username
        FROM
            application
        WHERE
            status = 'submit');


SELECT 
    appid
FROM
    application
WHERE
    appid <> SOME (SELECT 
            appid
        FROM
            applicationcomment
        WHERE
            is_active = 'yes');


/*ALL*/

SELECT 
    username
FROM
    Users
WHERE
    username = ANY (SELECT 
            username
        FROM
            application
        WHERE
            status = 'submit');


SELECT 
    appid
FROM
    Application
WHERE
    appid = ANY (SELECT 
            appid
        FROM
            applicationcomment
        WHERE
            is_active = 'yes');
            
            
 /*EXISTS*/
 
SELECT 
    appid
FROM
    Application
WHERE
    Exists (SELECT 
            appid
        FROM
            applicationcomment
        WHERE
            is_active = 'yes');
            
            

SELECT 
    username
FROM
    Users
WHERE
   Exists(SELECT 
            username
        FROM
            application
        WHERE
            status = 'submit');
            
