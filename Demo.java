//jdbc Assignment
//creating callable statement
import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.Connection;

import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Types;

public class Demo {

    public static void main(String[] args) {

        try {

            Connection con = (Connection) DriverManager.getConnection"java.sql.Driver", "root", "root");

            CallableStatement sqlStatement = (CallableStatement) con.prepareCall("{call getUserDetails(?,?,?)}");

            String username = "souvik";
            int age = 23;
            String gender = "male";
            sqlStatement.setString(1, username);
            sqlStatement.setInt(2, age);
            sqlStatement.setString(3, gender);

            sqlStatement.execute();


        } catch (Exception e) {
            System.out.println("Exception " + e);
        }
    }
}
