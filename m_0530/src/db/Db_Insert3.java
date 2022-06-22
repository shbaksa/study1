package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Db_Insert3 {

	public static void main(String[] args) throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root","1234");
		Scanner sc=new Scanner(System.in);
		
		System.out.println("번호 : ");
		int bunho=sc.nextInt();
		System.out.println("이름 : ");
		String name=sc.next();
		System.out.println("전화번호 : ");
		String phone=sc.next();
		System.out.println("나이 : ");
		int age=sc.nextInt();
		
		String sql="insert into member(bunho,name,phone,age) values(?,?,?,?)";
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		pstmt.setInt(4, age);
		pstmt.executeUpdate();
		
		sc.close();
		pstmt.close();
		conn.close();
		
		

	}

}

/*
-bunho : 번호, name : 이름, phone : 전화번호, age : 나이

2. 1번 심부름꾼을 통해서 111 , 홍길동, 010-1234-5678, 42 입력하는 문서
  (First jave)
3. Scanner 를 통해 2번의 동작을 하는것 만들기 (1번 심부름꾼)
  (Second.java)
4. 3번을 2번 심부름꾼으로 만들기
  (Third.java)


*/