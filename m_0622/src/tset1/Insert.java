package tset1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Insert {
	public static void main(String[] args) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root","1234");
		
		Scanner sc = new Scanner(System.in);
		System.out.print("이름입력 : ");
		String name = sc.next();
		System.out.print("주소입력 : ");
		String juso = sc.next();
		System.out.println("나이입력 : ");
		int age = sc.nextInt();
		
		String sql = "insert into friend(name,juso,age) values(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,juso);
		pstmt.setInt(3,age);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	}

}
