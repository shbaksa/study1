package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class DB_Delete22 {

	public static void main(String[] args) throws Exception {
		// 테이블안의 내용중 특정 레코드를 삭제
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// 삭제할 수 있도록 현재 테이블의 내용을 출력하기
		String sql2="select * from member";
		PreparedStatement pstmt2=conn.prepareStatement(sql2);
		// 읽어오기
		ResultSet rs=pstmt2.executeQuery();
		while(rs.next()) 
		{
			System.out.print(rs.getInt("bunho")+" ");
			System.out.print(rs.getString("name")+" ");
			System.out.print(rs.getString("phone")+" ");
			System.out.print(rs.getInt("age")+" ");
			System.out.println();
		}
		
		// 쿼리문
		sql2="delete from member where bunho=?";
		
		// 삭제할 레코드의 bunho값을 입력하기
		Scanner sc=new Scanner(System.in);
		System.out.print("삭제하고자 하는 번호를 입력 : ");
		int bunho=sc.nextInt();
		
	    // 2번 심부름꾼
		pstmt2=conn.prepareStatement(sql2);
		pstmt2.setInt(1, bunho);
		
		// 쿼리실행
		pstmt2.executeUpdate();
		
		// close
		sc.close();
	    pstmt2.close();
	    conn.close();
	}

}








