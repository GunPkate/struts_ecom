package action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import connection.DBConnection;
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
   

   
   public String execute() throws ClassNotFoundException, SQLException {

      String ret = ERROR;

      
      String userData = getUser();
      String passwordData = getPassword();


      try {
	      Connection conn = DBConnection.startConnection();
	      String sql = "SELECT * FROM users WHERE email = ? AND userpass = ?;";
	      PreparedStatement ps = conn.prepareStatement(sql);
	      ps.setString(1, userData);
	      ps.setString(2, passwordData);
	      ResultSet rs = ps.executeQuery();
	      
	      while (rs.next()) {
	    	  User user = new User();
	    	  user.setName(rs.getString("name"));
	    	  if(user.getName().length() >0 ) {
	    		   return SUCCESS;
	    	   }
	      }
      } catch (Exception e) {
		// TODO: handle exception
          return ret;
      }
//

      return ret;
   }


}
