package STORE;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class STOREcontrol {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	// ========================
	// 1. INSERT DATA FUNCTION
	// ========================
	
	
	public static boolean insertdata (String product_name, int quantity, double price, String description) {
		boolean isSuccess = false;
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "INSERT INTO stock.products VALUES (0,'"+product_name+"', '"+quantity+"', '"+price+"', '"+description+"' )";
			int rs = stmt.executeUpdate(sql);
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	// =======================
	// 2. GET DATA BY ID
	// =======================
	
	
	public static List<STOREmodel> getById (String id){
		int convertedID = Integer.parseInt(id);
		ArrayList <STOREmodel> Store = new ArrayList<>();
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM stock.products WHERE product_id '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int product_id = rs.getInt(1);
				String product_name = rs.getString(2);
				int quantity = rs.getInt(3);
				double price = rs.getDouble(4);
				String description = rs.getString(5);
				
				STOREmodel st = new STOREmodel (product_id,product_name,quantity,price,description);
				Store.add(st);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return Store;		
	}
	
	
	// ========================
	// 3. GET ALL PRODUCTS
	// ========================
	
	
	public static List<STOREmodel> getAllStore () {
		ArrayList <STOREmodel> Stores = new ArrayList<>();
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM products";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int product_id = rs.getInt(1);
				String product_name = rs.getString(2);
				int quantity = rs.getInt(3);
				double price = rs.getDouble(4);
				String description = rs.getString(5);
				
				STOREmodel st = new STOREmodel (product_id,product_name,quantity,price,description);
				Stores.add(st);
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return Stores;
		
	}
	
	
	// =========================
	// 4. UPDATE PRODUCT DATA
	// =========================
	
	
	public static boolean updatedata(String product_id,String product_name,int quantity,double price, String description) {
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "UPDATE products SET product_name='"+product_name+"', quantity='"+quantity+"' , price='"+price+"' , description='"+description+"'"
					+ "WHERE product_id='"+product_id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	}
	
	
	// =========================
	// 5. DELETE PRODUCT DATA
	// =========================
	
	
	public static boolean deletedata(String product_id) {
		int convID = Integer.parseInt(product_id);
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "DELETE FROM products WHERE product_id='"+convID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
}
