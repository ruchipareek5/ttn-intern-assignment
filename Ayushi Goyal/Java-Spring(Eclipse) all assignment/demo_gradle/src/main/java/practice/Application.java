package practice;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 

public class Application {	

    public static void main (String [] args ) throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        String connectionUrl = "jdbc:mysql://localhost:3306/ttn?useUnicode=true&characterEncoding=UTF-8&user=root&password=password";
        Connection conn = DriverManager.getConnection(connectionUrl);
        System.out.println("All tables in database are : \n");
        ResultSet rs = conn.prepareStatement("show tables").executeQuery();
 
        while(rs.next()){
            String s = rs.getString(1);
            System.out.println(s);
        }
        
        System.out.println("\n \n Inserting data in ttn_user \n");
        String query1 = "Insert into ttn_user values(?,?)";
        PreparedStatement pstmt = conn.prepareStatement(query1);
        pstmt.setString(1,"joey");
        pstmt.setString(2,"42");      
        int i=pstmt.executeUpdate();  
        System.out.println(i+" records inserted");  
        
        System.out.println("\n \n Reading table ttn_user \n");
        String query = "Select * from ttn_user";
        Statement stmt = conn.createStatement( );
        ResultSet rs1 = stmt.executeQuery(query);
        while(rs1.next()){
            String name = rs1.getString("name");
            int age = rs1.getInt("age");
            System.out.println(name+ " " + age);
        }
    }

}