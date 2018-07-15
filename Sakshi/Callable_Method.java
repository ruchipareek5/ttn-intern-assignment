import java.sql.*;
import java.util.Scanner;

public class Callable_Method {
    private final static String url = "jdbc:mysql://localhost:3306/ttn_13";

    static Scanner sc=new Scanner(System.in);
    public static Connection getConnection(){
        Connection c=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/storedprocedure","root","aakash10");
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
            System.out.println("Name :");
            cs.setString(1,sc.nextLine());
            System.out.println(" age :");
            cs.setInt(2,sc.nextInt());
            System.out.println(" Gender :");
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