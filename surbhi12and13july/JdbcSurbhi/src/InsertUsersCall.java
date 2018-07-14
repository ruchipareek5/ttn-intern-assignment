import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertUsersCall {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ttn_jdbc","root","tiger");
            CallableStatement callableStatement=con.prepareCall("call insert_into_users(?,?,?)");
            callableStatement.setString(1,"surbhi@gmail.com");
            callableStatement.setInt(2,25);
            callableStatement.setString(3,"Female");
           int resultStatus= callableStatement.executeUpdate();
           if(resultStatus>0)
               System.out.println("Insertion successful");
           else
               System.out.println("Insertion failed");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}
