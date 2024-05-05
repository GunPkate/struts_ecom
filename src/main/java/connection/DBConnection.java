package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static Connection conn = null;
    
        // Register the PostgreSQL driver
    public static Connection  startConnection() throws SQLException, ClassNotFoundException {
    	if(conn == null) {
    		
    	    String URL = "jdbc:postgresql://localhost:5432/j_servlet_test_db";
    	    String username = "root";
    	    String password = "root";
    	    Class.forName("org.postgresql.Driver");
    	    conn = DriverManager.getConnection(URL, username, password); 	    
    	}
    	return conn;
    }

}

