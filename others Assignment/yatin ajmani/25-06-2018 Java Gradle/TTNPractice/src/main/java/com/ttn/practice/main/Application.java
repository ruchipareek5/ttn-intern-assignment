package com.ttn.practice.main;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

import com.mysql.jdbc.PreparedStatement;
	
import com.ttn.practice.main.SingletonConnection;

public class Application {

	public static void main(String[] args) {
			Connection c=SingletonConnection.getConnection();
			Scanner sc=new Scanner(System.in);
			int opt;
			Statement stat=null;
			PreparedStatement preparedStatement = null;
			ResultSet rs=null;
			do{
				System.out.println("\n--------------------\n\tMenu\n--------------------\n1. Add a record\n2. All records\n3. Exit.");
				System.out.print("\nEnter your choice : ");
				opt=sc.nextInt();			
			try{
				switch(opt)
				{
					case 1:
						String s_name;
						System.out.print("Enter name of student :");
						s_name=sc.next();
						String q="insert into ttn_user(name) values(?)";
						preparedStatement = (PreparedStatement) c.prepareStatement(q);
						preparedStatement.setString(1, s_name);
						preparedStatement.executeUpdate();
						System.out.print("\nData Inserted.\n");
						break;
					case 2:
						stat=c.createStatement();
						rs=stat.executeQuery("Select * from ttn_user");
						if(rs.next()!=false)
						{
							System.out.println("names");
							System.out.println(rs.getString("name"));
							while(rs.next()) {
								System.out.println(rs.getString("name"));
							}
						}
						else
							System.out.println("No Record Found.\n");							
						break;
					case 3:
						c.close();
						System.exit(0);
						break;
					default:
						break;
				}
			}
			catch(Exception e){
				System.out.println(e.getMessage());
				e.printStackTrace();
			}
		}while(opt!=3);
		try{
			c.close();
			stat.close();
			rs.close();
			preparedStatement.close();
			sc.close();
		}
		catch(Exception e){
			System.out.println(e.getMessage());
		}

	}
}