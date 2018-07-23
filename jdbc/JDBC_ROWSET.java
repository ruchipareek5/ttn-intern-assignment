package jdbc;

import javax.sql.rowset.JdbcRowSet;
import javax.sql.rowset.RowSetProvider;
import java.sql.SQLException;

public class JDBC_ROWSET {

    public static void main(String[] args) throws SQLException {

        JdbcRowSet rowSet = RowSetProvider.newFactory().createJdbcRowSet();


    }
}
