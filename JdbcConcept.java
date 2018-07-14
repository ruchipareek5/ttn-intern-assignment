/*Stored Procedures
CREATE DEFINER=`root`@`localhost` PROCEDURE `userinsert`(IN username varchar(25),IN age int,IN gender varchar(10))
BEGIN
Insert into user values(username,age,gender);

END
*/


/*Triggers

CREATE DEFINER=`root`@`localhost` TRIGGER `ttn_test`.`user_AFTER_INSERT` After Update ON `user` FOR EACH ROW
BEGIN
update audit set old.email =new.email;
END

*/



import java.sql.*;
import java.util.ArrayList;

public class JdbcConcept {
    public static void main(String[] args) {
        ArrayList al = new ArrayList();
        ArrayList list = new ArrayList();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3305/javasqltest","root","root");


            CallableStatement cst = (CallableStatement)con.prepareCall("{call userinsert(?,?,?)}");;
            cst.setString (1, "Prateek");
            cst.setInt (2, 22);
            cst.setString (3,"Male");
            cst.execute();

            PreparedStatement pst=(PreparedStatement)con.prepareCall("Select * from batch");
            ResultSet rs=pst.executeQuery();

            while(rs.next())
                al.add(rs.getInt("bid"));
            al.add(rs.getString("bname"));
            al.add(rs.getString("startdate"));
            al.add(rs.getString("enddate"));
            al.add(rs.getInt("tid"));
            al.add(rs.getInt("aid"));
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

