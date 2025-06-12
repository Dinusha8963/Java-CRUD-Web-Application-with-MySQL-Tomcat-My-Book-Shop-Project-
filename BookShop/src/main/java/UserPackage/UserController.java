package UserPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import UserPackage.DBConnection;


public class UserController {
	//connect DB
	
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//Insert Data
		
		public static boolean insertdata(String name,String gmail ,String password ,String phon) {
			boolean isSuccess = false;
			
			try {
				//Connection Call
				
				con=DBConnection.getConnection();
				stmt=con.createStatement();
				
				//Query
				
				String sql = "insert into user values(0,'"+name+"','"+gmail+"','"+password+"','"+phon+"')";
				int rs =stmt.executeUpdate(sql);
				if(rs>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			return isSuccess;
			
			
		}
		
		//Login
		public static List<UserModel> loginValidate(String gmail, String password) {
		    ArrayList<UserModel> user = new ArrayList<>();
		    String sql = "SELECT * FROM user WHERE gmail=? AND password=?";
		    
		    try (Connection con = DBConnection.getConnection();
		         PreparedStatement pstmt = con.prepareStatement(sql)) {
		        
		        pstmt.setString(1, gmail);
		        pstmt.setString(2, password);
		        
		        try (ResultSet rs = pstmt.executeQuery()) {
		            if (rs.next()) {
		                int id = rs.getInt(1);
		                String name = rs.getString(2);
		                String dbGmail = rs.getString(3);
		                String dbPassword = rs.getString(4);
		                String phon = rs.getString(5);
		                
		                UserModel u = new UserModel(id, name, dbGmail, dbPassword, phon);
		                user.add(u);
		            }
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return user;
		}
}

