import java.sql.*;

public class UserStoredProcTest {
    public static void main(String[] args) {
        try {
            // Register driver class
            // Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Create Connection object
            Connection myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ttn_java_sql", "root", "root");
            // Call stored procedures with CallableStatement
            CallableStatement callableStatement = myConnection.prepareCall("{call add_user(?, ?, ?)}");
            // Set input parameter values
            callableStatement.setString(1, "Ginny");
            callableStatement.setInt(2, 14);
            callableStatement.setString(3, "female");
            // Execute CallableStatement to call stored procedure
            callableStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
