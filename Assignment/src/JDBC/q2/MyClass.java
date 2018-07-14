package JDBC.Q2;

import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.Connection;

import java.sql.*;

public class MyClass {

    public static void main(String[] args) {

        final String JDBC_DRIVER = "java.sql.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/users";
        final String DB_USER = "root";
        final String DB_PASS = "";


        try {

            Class.forName(JDBC_DRIVER);
            Connection con = (Connection) DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            CallableStatement sqlStatement = (CallableStatement) con.prepareCall("{call getUserDetails(?,?,?)}");

            String username = "vagish";
            int age = 23;
            String gender = "M";
            sqlStatement.setString(1, username);
            sqlStatement.setInt(2, age);
            sqlStatement.setString(3, gender);

            sqlStatement.execute();


        } catch (Exception e) {
            System.out.println("Exception " + e);
        }
    }
}
