package LOGIN;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import LOGIN.DBConnection;

public class LOGINcontoller {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Login Validate
	public static List<LOGINmodel> loginValidate (String email,String password){
		
		ArrayList <LOGINmodel> Login = new ArrayList<>();
		
		try {
			//DB Connection Call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM login.new_table WHERE "+"email= '"+email+"' AND password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String email1 = rs.getString(2);
				String password1 = rs.getString(3);
				
				LOGINmodel lg = new LOGINmodel(id,email1,password1);
				Login.add(lg);
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}
		return Login;
	}
	
}
