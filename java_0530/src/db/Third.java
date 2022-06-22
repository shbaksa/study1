package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Scanner;

public class Third {

	public static void main(String[] args) throws Exception {
		  Class.forName("com.mysql.jdbc.Driver");
		  String db="jdbc:mysql://localhost:3306/first";
		  Connection conn=DriverManager.getConnection(db,"root","1234");
		  
		  // Scanner를 통해 값을 입력받기
		  Scanner sc=new Scanner(System.in);
		  int bunho=sc.nextInt();
		  String name=sc.next();
		  String phone=sc.next();
		  int age=sc.nextInt();
		  
		  // PreparedStatement
		  String sql="insert into member(bunho,name,phone,age) values(?,?,?,?)";
		  PreparedStatement pstmt=conn.prepareStatement(sql);
		  pstmt.setInt(1,bunho);
		  pstmt.setString(2, name);
		  pstmt.setString(3, phone);
		  pstmt.setInt(4, age);
 
		  pstmt.executeUpdate();
		  
		  pstmt.close();
		  conn.close();
		  
	}

}
