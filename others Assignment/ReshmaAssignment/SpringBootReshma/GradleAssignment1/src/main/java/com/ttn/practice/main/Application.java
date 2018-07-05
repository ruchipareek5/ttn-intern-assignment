package com.ttn.practice.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Application {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String connectionUrl = "jdbc:mysql://localhost:3306/gradleAssignment?useUnicode=true&characterEncoding=UTF-8&user=root&password=reshma";
		Connection conn = DriverManager.getConnection(connectionUrl);
		
		ResultSet rs = conn.prepareStatement("show tables").executeQuery();

		while (rs.next()) {
			String s = rs.getString(1);
			System.out.println(s);
		}

		System.out.println("\n \n Inserting data in ttn_user \n");
		String query1 = "Insert into ttn_user values(?,?)";
		PreparedStatement pstmt = conn.prepareStatement(query1);
		pstmt.setString(1, "rahul");
		pstmt.setString(2, "31");
		int i = pstmt.executeUpdate();
		System.out.println(i + " records inserted");

		System.out.println("\n \n Reading table ttn_user \n");
		String query = "Select * from ttn_user";
		Statement stmt = conn.createStatement();
		ResultSet rs1 = stmt.executeQuery(query);
		while (rs1.next()) {
			String name = rs1.getString("userName");
			int age = rs1.getInt("userAge");
			System.out.println(name + " " + age);
		}
	}

}