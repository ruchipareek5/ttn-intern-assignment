package com.ttn.practice.main;

import java.sql.*;

public class SingletonConnection {
	private final static String url = "jdbc:mysql://localhost/ttn_user";

	public static Connection getConnection(){
		Connection c=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection(url,"root","");
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			return c;
		}
	}
}