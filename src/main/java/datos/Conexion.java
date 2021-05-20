package datos;

import java.sql.*;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class Conexion {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/control_clientes?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";
    private static BasicDataSource datasource;

    public static DataSource getDataSource() throws SQLException {
        if (datasource == null) {
            datasource = new BasicDataSource();
            datasource.setUrl(JDBC_URL);
            datasource.setUsername(JDBC_USER);
            datasource.setPassword(JDBC_PASSWORD);
            Driver driver = new com.mysql.jdbc.Driver();
            datasource.setDriver(driver);
            datasource.setInitialSize(50);
        }

        return datasource;

    }

    public static Connection getConnection() throws SQLException {
        return getDataSource().getConnection();
    }

    public static void close(ResultSet rs) {
        try {
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public static void close(PreparedStatement stmt) {
        try {
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

    public static void close(Connection conn) {
        try {
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }

}
