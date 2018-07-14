import java.sql.*;
import java.util.Scanner;

public class callable {
    private final static String url = "jdbc:mysql://localhost:3306/ttn_13";

    static Scanner sc=new Scanner(System.in);
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

    public static void main(String[] args) {
        Connection con=null;
        CallableStatement cs=null;
        try{
            con=getConnection();

            cs=con.prepareCall("{call bla(?,?,?)}");
            System.out.println("Enter Name :");
            cs.setString(1,sc.nextLine());
            System.out.println("Enter age :");
            cs.setInt(2,sc.nextInt());
            System.out.println("Enter Gender :");
            String b=new String();
            b=sc.nextLine();
            System.out.println(b);
            cs.setString(3,b);
            cs.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}