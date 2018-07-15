import java.sql.*;
import java.util.Scanner;

public class JDBCFile {
    private String url = "jdbc:mysql://localhost:3306/jdbc_sql";
	
    public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
        Connection con=null;
        CallableStatement cs=null;
        try{
			Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url,"root","qwerty");
            cs=con.prepareCall("{call enter(?,?,?,?)}");
            System.out.println("Enter Name :");
            cs.setString(1,sc.nextLine());
            System.out.println("Enter age :");
            cs.setInt(2,sc.nextInt());
            System.out.println("Enter Gender :");
            cs.setString(3,sc.nextLine());
			System.out.println("Enter Email :");
            cs.setString(4,sc.nextLine());
            cs.execute();
			
			PreparedStatement stmt=con.prepareStatement("select * from users");
			ResultSet rs=stmt.executeQuery();
			while(rs.next()){  
				System.out.println(rs.getString(1)+" "+rs.getInt(2)+" "+rs.getString(3)+" "+rs.getString(4));  
			}  

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}