package jdbc;

import java.sql.*;

public class JDBC_PRACTICE {

    public static void main(String[] args) throws SQLException {

        Connection con = DriverManager.getConnection
                ("jdbc:mysql://localhost:3306/ttn_Exercise_1",
                        "root","dineshmamta");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select *from PoliceDB");
        rs.absolute(3);
        System.out.println(rs.getString(2));
        while(rs.next()){

            System.out.println(rs.getInt(1)+" "+rs.getString(2));
        }

    }
}
