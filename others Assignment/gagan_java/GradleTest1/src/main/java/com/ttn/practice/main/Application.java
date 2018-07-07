package com.ttn.practice.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class Application {
	public static void main(String agrs[]) throws Exception
	{
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost/TTN","root","dineshmamta");
	//	PreparedStatement preparedStatement=connection.prepareStatement("insert into ttn_user values(1,'gagan')");
		//preparedStatement.execute();
		 PreparedStatement preparedStatement=connection.prepareStatement("Select * from ttn_user");
		ResultSet resultSet=preparedStatement.executeQuery();
		while(resultSet.next())
		{
			System.out.println(resultSet.getString(2));
		}
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}