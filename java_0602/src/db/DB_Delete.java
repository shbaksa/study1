package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class DB_Delete {

	public static void main(String[] args) throws Exception {
		// 테이블안의 내용중 특정 레코드를 삭제
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// 쿼리문
		String sql="delete from member where bunho=?";
		
		// 삭제할 레코드의 bunho값을 입력하기
		Scanner sc=new Scanner(System.in);
		int bunho=sc.nextInt();
		
	    // 2번 심부름꾼
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		
		// 쿼리실행
		pstmt.executeUpdate();
		
		// close
		sc.close();
	    pstmt.close();
	    conn.close();
	}

}








