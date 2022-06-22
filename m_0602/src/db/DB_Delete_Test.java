package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_Delete_Test {

	public static void main(String[] args) throws Exception {
		// 테이블안의 내용중 특정 레코드를 삭제
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");
		DB_Insert di = new DB_Insert();
		// 이전값 보여주기
		System.out.println("테이블");
		DB_Select ds = new DB_Select();
		ds.show_table();

		Scanner sc = new Scanner(System.in);

		
		System.out.println("삭제를 원하시면 0");
		System.out.println("추가를 원하시면 1");
		System.out.println("종료를 원하시면 2");
		
			int x = sc.nextInt();
			if (x == 0) {

				String sql = "delete from member where bunho=?";
				System.out.print("삭제하고자 하는 번호 입력 : ");
				int bunho = sc.nextInt();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, bunho);
				pstmt.executeUpdate();
				pstmt.close();

			} else if (x == 1) {
				System.out.println("추가 레코드 입력");
				String sql = "insert into member(bunho,name,phone,age) values(?,?,?,?)";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				di.input();
				pstmt.setInt(1, di.bunho);
				pstmt.setString(2, di.name);
				pstmt.setString(3, di.phone);
				pstmt.setInt(4, di.age);
				pstmt.executeUpdate();
				pstmt.close();
			}
			
	
		
		ds.show_table();
		// close
		
		
	}

}
