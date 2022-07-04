package mw_0704;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DB_Access {
	
	// 전역변수 설정
	Connection conn;
	PreparedStatement pstmt;
	String sql;
	
	// DB연결을 생성자를 통해 처리
	public DB_Access() throws Exception{
		
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		conn = DriverManager.getConnection(db, "root", "1234");
		// 다른 메소드에서 접근하고자 하는 속성 => 전역변수 설정
		
	}
	public void table_create() throws Exception {
		
		// 쿼리생성
		sql="create table test2(name char(10),age int)";
		
		// 심부른꾼 생성
		pstmt = conn.prepareStatement(sql);
		
		// 쿼리실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
	

	}
	
	public void table_insert(String name,int age) throws Exception {
		
		// 쿼리생성
		sql = "insert into test(name,age) values(?,?)";
		
		// 심부름꾼 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, age);
		
		// 쿼리실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
	}

}
