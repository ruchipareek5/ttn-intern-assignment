package JDBC;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSetMetaData;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;

public class Prepared {

    public static void main(String[] args) {

        final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
        final String DB_URL = "jdbc:mysql://localhost:3306/batches";
        final String DB_USER = "root";
        final String DB_PASS = "05223252153";
        List<Map<String, Object>> rows= new ArrayList<Map<String, Object>>();
        Map hashMap=new HashMap();

        try {

            Class.forName(JDBC_DRIVER);
            Connection con = (Connection) DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);

            String preparedQuery = "select * from user";


            PreparedStatement sqlStatement = con.prepareStatement(preparedQuery);
            ResultSet rs = sqlStatement.executeQuery();

            ResultSetMetaData md = (ResultSetMetaData) rs.getMetaData();
            int columns = md.getColumnCount();
            while (rs.next()) {
                Map<String, Object> row = new HashMap<String, Object>(columns);
                for (int i = 1; i <= columns; ++i) {
                    row.put(md.getColumnName(i), rs.getObject(i));
                }
                rows.add(row);
            }
        } catch (Exception e) {

        }
        if (rows.size()!=0)
        hashMap= rows.get(0);
        Iterator<Object> iterator = hashMap.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, Object> entry = (Map.Entry<String, Object>) iterator.next();
            System.out.println("Key :" + entry.getKey() + " Value : " + entry.getValue());
        }
    }
}
