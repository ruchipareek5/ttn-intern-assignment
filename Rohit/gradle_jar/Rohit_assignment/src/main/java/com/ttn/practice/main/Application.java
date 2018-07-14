package com.ttn.practice.main;
import java.sql.*;
import java.util.*;
public class Application {
public static void main(String args[])throws Exception{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment1","root","1969");
	Statement st=con.createStatement();
	
	String sql = "INSERT INTO ttn_user " +
            "VALUES (100, 'akash', 'Delhi')";
	st.executeUpdate(sql);
	
	ResultSet rs=st.executeQuery("Select * from ttn_user");
	while(rs.next())
	{
		System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3));
	}
	rs.close();
	st.close();
	con.close();
}
}
