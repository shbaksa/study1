package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_All {

	public void insert() throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");

		Scanner sc = new Scanner(System.in);
		
		System.out.print("번호입력 : "); 
		int bunho = sc.nextInt();
		System.out.print("이름입력 : "); 
		String name = sc.next();
		System.out.print("전화번호입력 : "); 
		String phone = sc.next();
		System.out.print("나이입력 : ");
		int age = sc.nextInt();

		String sql = "insert into member(bunho,name,phone,age) values(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, bunho);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		pstmt.setInt(4, age);
		pstmt.executeUpdate();
	}

	public void select() throws Exception {
		
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

	public void delete() throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("삭제하고자 하는 번호 입력 : ");
		int bunho = sc.nextInt();
		
		String sql = "delete from member where bunho=?";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);

		pstmt.executeUpdate();

	}

	public void update() throws Exception {

		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root", "1234");

		Scanner sc = new Scanner(System.in);
		
		System.out.print("수정할 번호 : ");
		int bunho = sc.nextInt();
		System.out.print("수정할 이름 : ");
		String name = sc.next();
		System.out.print("수정할 전화번호 : ");
		String phone = sc.next();
		System.out.print("수정할 나이 : ");
		int age = sc.nextInt();

		String sql = "update member set name=? , phone=? ,  age=?  where bunho=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(4, bunho);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		pstmt.setInt(3, age);

		pstmt.executeUpdate();

	}
	
	public void control() throws Exception {
		
		Scanner sc = new Scanner(System.in);
		int chk=0;
		do {
			
			switch (chk) {
			case 1: select();
				break;
			case 2: insert();
				break;
			case 3: delete();
				break;
			case 4: update();
				break;
			}

			System.out.print("1. 조회" + " ");
			System.out.print("2. 입력" + " ");
			System.out.print("3. 삭제" + " ");
			System.out.print("4. 수정" + " ");
			System.out.println("5. 종료");

		} while ((chk=sc.nextInt()) != 5);
		
		
	}
}
