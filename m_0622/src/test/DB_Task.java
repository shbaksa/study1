package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_Task {
	
	Connection conn;
	
	DB_Task() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		conn = DriverManager.getConnection(db, "root","1234");
		
	}
	
	public void insert() throws Exception {
		Scanner sc = new Scanner(System.in);
		System.out.print("이름 :");
		String name = sc.next();
		System.out.print("주소 :");
		String juso = sc.next();
		System.out.print("핸드폰번호 :");
		String phone = sc.next();
		
		String sql ="insert into test_member(name,juso,phone) values(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, juso);
		pstmt.setString(3, phone);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();

	}
	
	public void select() throws Exception {
				
		String sql ="select * from test_member";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			System.out.print("이름 : "+rs.getString("name")+" ");
			System.out.print("주소 : "+rs.getString("juso")+" ");
			System.out.print("핸드폰번호 :  "+rs.getString("phone"));
			System.out.println();
		}
		rs.close();
		pstmt.close();
		conn.close();
	
	}

}
