package JDBC;

import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;

public class Callable {
    public static void main(String[] args) {

        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/batches";
        final String DB_USER = "root";
        final String DB_PASS = "lohit";


        try {

            Class.forName(JDBC_DRIVER);
            Connection con = (Connection) DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            CallableStatement sqlStatement = (CallableStatement) con.prepareCall("{call users(?,?,?)}");
            sqlStatement.setString("username","hello");
            sqlStatement.setInt("age",1);
            sqlStatement.setString("gender","male");
            ResultSet resultSet=sqlStatement.executeQuery();
        } catch (Exception e){}
    }
}
