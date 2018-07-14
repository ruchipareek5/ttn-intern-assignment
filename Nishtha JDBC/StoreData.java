package user;

import java.sql.*;
import java.util.HashMap;
import java.util.Map;

import user.User;

public class StoreData
{
    public static void main(String[] args) {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/user","root","mca2016");
            //Statement sqlStatment = con.createStatement();
            PreparedStatement ps = con.prepareStatement ("select * from user where gender=?;");
          ps.setString (1,"female");
            User u = new User();
            ResultSet rs = ps.executeQuery ();

            while (rs.next()) {               // Position the cursor                  4
                String s = rs.getString(1);        // Retrieve the first column value
                Integer r = rs.getInt (2);      // Retrieve the first column value
                String s1 = rs.getString(3);
                String s3= rs.getString (4);
                // Retrieve the first column value

                u.setName (s);
                u.setGender (s1);
                u.setAge (r);
                u.setEmail (s3);
                System.out.println (u);

                Map<Integer,User> map = new HashMap<> ();
                map.put(1,u);


                System.out.println ("printing through hashmap "+map);

             }
       /*
            CallableStatement cs = con.prepareCall ("call addition(?,?,?,?)");
            cs.registerOutParameter (3,Types.INTEGER);
            cs.registerOutParameter (4,Types.VARCHAR);
            cs.setInt (1,12);
            cs.setInt (2,24);
            cs.execute ();
            int result =cs.getInt (3);
            String rs1 = cs.getString (4);
            System.out.println ("value of sum is :"+result+" "+"by :"+rs1);

            /*con.close();
            while(rs.next ())
            {
                System.out.println ();
                System.out.println(rs.getString (1)+"  "+rs.getDate (2)+"  "+rs.getDate (3)+"  "+rs.getString(4));

            }*/
            con.close();
        }
        catch (Exception e){
            e.printStackTrace ();
        }
    }
}

