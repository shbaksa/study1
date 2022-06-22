package tset1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Select {
	public static void main(String[] args) throws Exception {
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root","1234");
		
		String sql = "select * from friend";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);	
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			System.out.println(rs.getString("name")+" ");
			System.out.println(rs.getString("juso")+" ");
			System.out.println(rs.getInt("age"));
		}
		rs.close();
		pstmt.close();
		conn.close();
	}

}
