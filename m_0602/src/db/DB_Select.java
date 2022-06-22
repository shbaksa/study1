package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB_Select {

	public void show_table() throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");

		String sql = "select * from member";

		PreparedStatement pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			System.out.print("|" + rs.getInt("bunho") + "|");
			System.out.print(rs.getString("name") + "|");
			System.out.print(rs.getString("phone") + "|");
			System.out.println(rs.getInt("age") + "|");
		}
		
		

	}
	public void show_table1() throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");

		String sql = "select * from member";

		PreparedStatement pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			System.out.print("|" + rs.getInt("bunho") + "|");
			System.out.print(rs.getString("name") + "|");
			System.out.print(rs.getString("phone") + "|");
			System.out.println(rs.getInt("age") + "|");
		}
		
		

	}
	

}
