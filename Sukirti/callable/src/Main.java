
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.*;
import java.sql.ResultSet;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.lang.*;


public class Main {
    public static void main(String[] args) {
        Connection con=null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
        }

        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }



        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TtnUserAssgnment", "root", "archnamudgal03@");


            CallableStatement c = con.prepareCall("call insert_data('Suki',22,'Female')");
            CallableStatement c1 = con.prepareCall("call insert_data('Sakshi',23,'Female')");
            CallableStatement c2 = con.prepareCall("call insert_data('Sharma',25,'Male')");


//executing
            c.execute();
            c1.execute();
            c2.execute();

        }catch (SQLException e) {
            e.printStackTrace();
        }

try {
    // PreparedStatement
    String preparedQuery = "SELECT * FROM TtnUserAssgnmentTable;";

    PreparedStatement st = con.prepareStatement(preparedQuery);


    ResultSet rs = st.executeQuery();
    HashMap<String, ArrayList> hashmp = new HashMap<>();


    while (rs.next()) {
        ArrayList<String> list = new ArrayList();

        hashmp.put(rs.getString("Username"), list);
        list.add(rs.getString("Age"));


    }

    hashmp.forEach((x, y) -> {
        System.out.println(x);
        y.forEach(z -> System.out.println(z));

    });

}catch (SQLException e) {
    e.printStackTrace();
}


    }
}
