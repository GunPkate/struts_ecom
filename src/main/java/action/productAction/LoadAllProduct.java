package action.productAction;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Product;

public class LoadAllProduct {
	
	public static List<Product> execute() {
		ArrayList<Product>  list = new ArrayList<Product>();
		
		try {
			Connection conn = DBConnection.startConnection();
			String query = "Select * from products";
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				Product p = new Product();
				p.setName(rs.getString("name"));
				p.setId(rs.getString("id"));
				p.setImage(rs.getString("image"));
				p.setCategory(rs.getString("category"));
				p.setPrice(rs.getFloat("price"));
				
				list.add(p);
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			Product p = new Product();
			p.setName("");
			p.setId("");
			p.setImage("");
			p.setCategory("");
			p.setPrice(0);
			
			list.add(p);
			return list;
		}
		

	}
}
