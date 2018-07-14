// Niharika - Assignment2

package com.ttn.practice.main;

import java.sql.DriverManager;
import java.sql.ResultSet;

/*
 * SQL:
 * create database ttn_java_practice;
 * use ttn_java_practice;
 * create table ttn_user(userid int, name varchar(100), designation varchar(100));
 * select * from ttn_user;
 */

public class Application {
	public static void main(String[] args) {
		System.out.println("Assignment2");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ttn_java_practice","root","neo_TTN2006");
			java.sql.Statement stmt = con.createStatement();
			stmt.execute("insert into ttn_user values(41, 'Niharika', 'JVM Intern')");
			ResultSet rs = stmt.executeQuery("select * from ttn_user");  
			while(rs.next())
				System.out.println(rs.getInt(1) + " "+ rs.getString(2) + " "+ rs.getString(3));  
			con.close();  
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
