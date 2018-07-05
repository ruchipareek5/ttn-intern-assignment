package gradleExercise;

import java.sql.*;
public class Application {

	public static void main(String[] args) throws SQLException 
	{
		Connection con;
		con=null;
			try
			{
				//Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ABC","root","root");
				System.out.println("Connected");
			}
			catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.exit(-1);
			}
		
		String s = "insert into AB values (11,'Ankit')";
		PreparedStatement stmt = con.prepareStatement(s);
		stmt.executeUpdate();
		
		
		s = "select * from AB";
		stmt = con.prepareStatement(s);
		ResultSet rs = stmt.executeQuery();
		
		while(rs.next())
		{
			System.out.println("Id : "+rs.getInt(1));
			System.out.println("name : "+rs.getString(2));

		}
	}

}
