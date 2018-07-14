package JDBC.Q2;

import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.Connection;

import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Types;

public class MyClass {

    public static void main(String[] args) {

        final String JDBC_DRIVER = "java.sql.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/myBatches";
        final String DB_USER = "root";
        final String DB_PASS = "";


        try {
            //Establish connection
            Class.forName(JDBC_DRIVER);
            Connection con = (Connection) DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            // Create a statement
            CallableStatement sqlStatement = (CallableStatement) con.prepareCall("{call getUserDetails(?,?,?)}");

            //Set values of parameters
            String username = "vagish";
            int age = 23;
            String gender = "M";
            sqlStatement.setString(1, username);
            sqlStatement.setInt(2, age);
            sqlStatement.setString(3, gender);

            sqlStatement.execute();

            String outUserName = sqlStatement.getString(2);
            System.out.println("Value of out parameter : " + outUserName);
            //display(myResultSet);

        } catch (Exception e) {
            System.out.println("Exception " + e);
        }
    }
}
