import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class PrepareBatches {
    private final static String url = "jdbc:mysql://localhost:3306/ttn_12";
    static ArrayList<Batches> batches = new ArrayList<>();
    static HashMap<Batches, String> batchesMap = new HashMap<>();

    public static Connection getConnection() {
        Connection c = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(url, "root", "");
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return c;
        }
    }

    public static void main(String[] args) {

        Connection con = null;
        PreparedStatement stat = null;
        ResultSet rs = null;
        try {
            con = getConnection();

            stat = con.prepareStatement("select * from batches");
            rs = stat.executeQuery();
            while (rs.next()) {
                batches.add(new Batches(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getString(5)));
            }

            for (Batches b : batches)
                System.out.println(b);
            rs.close();
            rs = stat.executeQuery();
            while (rs.next()) {
                if (new Date(rs.getDate(4).getTime()).before(new java.util.Date()))
                    batchesMap.put(new Batches(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getString(5)), "Past");
                else
                    batchesMap.put(new Batches(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getString(5)), "Present");
            }

            for (Map.Entry<Batches, String> hm : batchesMap.entrySet())
                System.out.println(hm.getKey() + " is " + hm.getValue());

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}