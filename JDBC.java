
import java.sql.*;
import java.util.ArrayList;

public class JDBC {
    /*Stored Procedure code:
CREATE DEFINER=`root`@`localhost` PROCEDURE `userinsert`(IN username varchar(25),IN age int,IN gender varchar(10))
BEGIN
Insert into user values(username,age,gender);
END
*/


/*Trigger code:
CREATE DEFINER=`root`@`localhost` TRIGGER `ttn_test`.`user_AFTER_INSERT` After Update ON `user` FOR EACH ROW
BEGIN
update audit set old.email =new.email;
END
*/
        public static void main(String[] args) {
            ArrayList arrayList = new ArrayList();
            ArrayList list = new ArrayList();
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/javasqltest","root","qwerty123");


                CallableStatement a = (CallableStatement)con.prepareCall("{call userinsert(?,?,?)}");;
                a.setString (1, "Shreya");
                a.setInt (2, 20);
                a.setString (3,"Feale");
                a.execute();

                PreparedStatement b=(PreparedStatement)con.prepareCall("Select * from batch");
                ResultSet rs=b.executeQuery();

                while(rs.next())
                    arrayList.add(rs.getInt("bid"));
                arrayList.add(rs.getString("bname"));
                arrayList.add(rs.getString("startdate"));
                arrayList.add(rs.getString("enddate"));
                arrayList.add(rs.getInt("tid"));
                arrayList.add(rs.getInt("aid"));
                list.add(arrayList);

                Map<String, Batch> batchMap = new HashMap<String, Batch>();
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