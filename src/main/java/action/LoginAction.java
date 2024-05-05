package action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.struts2.dispatcher.Parameter.Request;

import com.opensymphony.xwork2.ActionSupport;
import model.User;


public class LoginAction extends ActionSupport {

	   private String user;
	   private String password;
	   private String name;
	
	   public String getUser() {
		      return user;
	   }

	   public void setUser(String user) {
		      this.user = user;
	   }

	   public String getPassword() {
		      return password;
	   }

	   public void setPassword(String password) {
		      this.password = password;
	   }

	   public String getName() {
		      return name;
	   }

	   public void setName(String name) {
		      this.name = name;
	   }
   

   
   public String execute() {

      String ret = ERROR;
      Connection conn = null;
      
      String userData = getUser();
      String passwordData = getPassword();
      String URL = "jdbc:postgresql://localhost:5432/j_servlet_test_db";
      String  userDB = "root";
      String  passwordDB = "root";

      try {

      Class.forName("org.postgresql.Driver");
      conn = DriverManager.getConnection(URL, userDB, passwordDB);
      String sql = "SELECT * FROM users WHERE user = ? AND password = ?";
      PreparedStatement ps = conn.prepareStatement(sql);
      ps.setString(1, userData);
      ps.setString(2, passwordData);
      ResultSet rs = ps.executeQuery();

      while (rs.next()) {
            name = rs.getString(1);
            System.out.println(name);
            ret = SUCCESS;
      }
      } catch (Exception e) {
         System.out.print("Error");
      } finally {
         if (conn != null) {
            try {
               conn.close();
            } catch (Exception e) {
            }
         }
      }
      return ret;
   }


}
