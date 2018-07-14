package JDBC;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSetMetaData;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MyClass {

    public static void main(String[] args) {

        final String JDBC_DRIVER = "java.sql.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/myBatches";
        final String DB_USER = "root";
        final String DB_PASS = "";


        try {

            Class.forName(JDBC_DRIVER);
            Connection con = (Connection) DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String preparedQuery = "select * from batches";


            Statement sqlStatement = con.createStatement();
            ResultSet rs = sqlStatement.executeQuery(preparedQuery);


            ResultSetMetaData md = (ResultSetMetaData) rs.getMetaData();
            int columns = md.getColumnCount();
            List<Map<String, Object>> rows = new ArrayList<Map<String, Object>>();
            while (rs.next()) {
                Map<String, Object> row = new HashMap<String, Object>(columns);
                for (int i = 1; i <= columns; ++i) {
                    row.put(md.getColumnName(i), rs.getObject(i));
                }
                rows.add(row);
            }


        } catch (Exception e) {

        }
    }
}
