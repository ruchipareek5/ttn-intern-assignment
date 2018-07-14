import java.sql.*;
import java.util.ArrayList;
/*Stored Procedures
use stored;
show tables;
create table user(
username varchar(20),
age int,
gender varchar(10)
);
delimiter //
CREATE DEFINER=`root`@`localhost` PROCEDURE `userinsert`(IN username varchar(25),IN age int,IN gender varchar(10))
BEGIN
Insert into user values(username,age,gender);
END	//
delimiter ;

call userinsert("amarjeet",22,"male");
call userinsert("rahul",23,"male");
call userinsert("suraj",20,"male");
call userinsert("sohan",21,"male");
call userinsert("temp",25,"male");
select * from user;

*/


/*Triggers
delimiter //
CREATE DEFINER=`root`@`localhost` TRIGGER `user_up` After Update ON `user_personal_details` FOR EACH ROW
BEGIN
update audit set old.email =new.email;
END //
delimiter ;

*/

public class jdbc2 {
    public static void main(String[] args) {
        ArrayList al = new ArrayList();
        ArrayList list = new ArrayList();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/stored","root","root");


            CallableStatement cst = (CallableStatement)con.prepareCall("{call userinsert(?,?,?)}");;
            cst.setString (1, "sohan");
            cst.setInt (2, 21);
            cst.setString (3,"Male");
            cst.execute();

            PreparedStatement pst=(PreparedStatement)con.prepareCall("Select * from Batch");
            ResultSet rs=pst.executeQuery();

            while(rs.next())
                al.add(rs.getInt("bid"));
            al.add(rs.getString("start_date"));
            al.add(rs.getString("end_date"));
            al.add(rs.getInt("tcmid"));
            al.add(rs.getInt("assid"));

            list.add(al);

            HashMap<String, Batch> batchMap = new HashMap<String, Batch>();
            for (Batch b : list) {
                batchMap.put(b.getBatchId(), b);
            }

            con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }

    }
}


