/*Stored Procedures
CREATE DEFINER=`root`@`localhost` PROCEDURE `userinsert`(IN username varchar(25),IN age int,IN gender varchar(10))
BEGIN
Insert into user values(username,age,gender);

END
*/


/*Triggers

create trigger emailupd 
BEFORE UPDATE ON ttn_test.users
FOR EACH ROW
BEGIN
set @new_name=new.username;
SET @old_name=old.username;
if @new_name != @old_name then
insert into audit_user values(@old_name,@new_name);
end if;
END

*/
import java.sql.*;
import java.util.ArrayList;

public class JdbcConcept {
    public static void main(String[] args) {
       List<Batch> batches;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                    "jdbc:mysql://localhost:3305/javasqltest","root","root");


            CallableStatement cst = (CallableStatement)con.prepareCall("{call userinsert(?,?,?)}");;
            cst.setString (1, "Prateek");
            cst.setInt (2, 22);
            cst.setString (3,"Male");
            cst.execute();

            PreparedStatement pst=(PreparedStatement)con.prepareStatement("Select * from batch");
            ResultSet rs=pst.executeQuery();

            while(rs.next())
            {
                String batchId=resultSet.getString("batch_id");
                String batchName=resultSet.getString("batch_name");
                Date batchStartDate=resultSet.getDate("batch_start_date");
                Date batchEndDate=resultSet.getDate("batch_end_date");
                int assessorId=resultSet.getInt("assessor_id");
                int trainerId=resultSet.getInt("trainer_id");
                batches.add(new Batch(batchId,batchName.BatchStartDate,batchEndDate,assessorId,trainerId));

           
             List<Batch> pastBatches=batches.stream().filter(x->x.getEndDate().compareTo(new Date())<0).collect(Collectors.toList());
            HashMap<String,List<Batch>>bMap=new HashMap<>();
            bMap.put("Past Batches",pastBatches);
            
            List<Batch> presentBatches=batches.stream().filter(x->x.getEndDate().compareTo(new Date())>0).collect(Collectors.toList());
            HashMap<String,List<Batch>>bMap=new HashMap<>();
            bMap.put("Present Batches",presentBatches);

            con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }

    }
}

