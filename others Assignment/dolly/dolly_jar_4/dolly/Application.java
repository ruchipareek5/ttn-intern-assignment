package practice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 

public class Application {	

    public static void main (String [] args ) throws SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        String connectionUrl = "jdbc:mysql://localhost:3306/ttn?useUnicode=true&characterEncoding=UTF-8&user=root&password=password";
        Connection conn = DriverManager.getConnection(connectionUrl);
        System.out.println("\n \n Inserting data in ttn_user \n");
        String query1 = "Insert into ttn_user values(?,?)";
        PreparedStatement pstmt = conn.prepareStatement(query1);
        pstmt.setString(1,"xyz");
        pstmt.setString(2,"50");      
        int dd=pstmt.executeUpdate();  
        String query = "Select * from ttn_user";
        Statement stmt = conn.createStatement( );
        ResultSet rs = stmt.executeQuery(query);
        while(rs.next()){
            String name = rs.getString("name");
            int age = rs.getInt("age");
            System.out.println(name+ " " + age);
        }
    }

}