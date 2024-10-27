package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
        String username = "your_db_username";
        String password = "your_db_password";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        return DriverManager.getConnection(dbURL, username, password);
    }
}
