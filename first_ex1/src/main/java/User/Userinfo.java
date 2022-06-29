package User;

import java.sql.*;

public class Userinfo {

		private Connection con;
		private PreparedStatement pstmt;
		private ResultSet rs;
		
		
		public Userinfo()
		{
			try{				
				  Class.forName("org.mariadb.jdbc.Driver"); 
			  	  con = DriverManager.getConnection(
			  			  "jdbc:mariadb://localhost:3306/customer",
			  			  "root",
			  			  "0000"); 			 
			      }
			catch(Exception  e){
				  			e.printStackTrace();
			  			}
		}
		public int login(String userID, String userPassword)
		{
			String sql = "select userPassowrd from user where userID = ?";
			
			try {
				pstmt = con.prepareStatement(sql); 
				pstmt.setString(1, userID);
				rs = pstmt.executeQuery();
				if(rs.next())
				{
					if(rs.getString(1).equals(userPassword))
					{
						return 1;
					}
					else
						return 0;
				}
				return -1;
			}catch (Exception e)
			{
				e.printStackTrace();
					}
			return -2;
		}
		public int join(user user) {
			  String sql = "insert into user values(?, ?, ?, ?, ?)";
			  try {
			    pstmt = con.prepareStatement(sql);
			    pstmt.setString(1, user.getUserID());
			    pstmt.setString(2, user.getUserPassword());
			    pstmt.setString(3, user.getUserName());
			    pstmt.setString(4, user.getUserGender());
			    pstmt.setString(5, user.getUserEmail());
			    return pstmt.executeUpdate();
			  }catch (Exception e) {
			 	e.printStackTrace();
			  }
			  return -1;
			}
}
