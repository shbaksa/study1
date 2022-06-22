package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_Delete {

	public static void main(String[] args) throws Exception {
		// 테이블안의 내용중 특정 레코드를 삭제
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");

		// 이전값 보여주기
		System.out.println("테이블");
		DB_Select di=new DB_Select();
		di.show_table();
		
		// 쿼리문
		String sql = "delete from member where bunho=?";

		// 삭제할 레코드의 bunho값을 입력받기
		Scanner sc = new Scanner(System.in);
		System.out.print("삭제하고자 하는 번호 입력 : ");
		int bunho = sc.nextInt();

		// 2번 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);

		// 쿼리실행
		pstmt.executeUpdate();
		
		// 삭제후 보여주기
		System.out.println("테이블");
		di.show_table();
		
		// 쿼리문

		// close
		sc.close();
		pstmt.close();
		conn.close();

	}

}
