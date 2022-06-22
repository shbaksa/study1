package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Scanner;

public class DB_Insert {
   public static void main(String[] args) throws Exception {
	  Class.forName("com.mysql.jdbc.Driver");
	  String db="jdbc:mysql://localhost:3306/first";
	  Connection conn=DriverManager.getConnection(db,"root","1234");
	  
	  Scanner sc=new Scanner(System.in);
	  String name=sc.next(); // 원더우먼
	  String juso=sc.next(); // 고양시
	  int age=sc.nextInt();  // 33
	  
	  //  Scanner로 이름, 주소, 나이를 입력 => 아래의 쿼리문에 넣어주면 된다.
	  //"insert into friend(name,juso,age) values('원더우먼','고양시',33)";
	  //String sql="insert into friend(name,juso,age) values('"+name+"','"+juso+"',"+age+")";
	  // 1번 심부름꾼 생성 => 자바소스에 있는 쿼리문을 mysql로 가져가서 실행시킬 객체
	  //Statement stmt=conn.createStatement(); 
	  //stmt.executeUpdate(sql);
	  
	  // 2번 심부름꾼 생성
	  String sql="insert into friend(name,juso,age) values(?,?,?)";
	  PreparedStatement pstmt=conn.prepareStatement(sql);
	  pstmt.setString(1, name);
	  pstmt.setString(2, juso);
	  pstmt.setInt(3, age);
	  pstmt.executeUpdate();
	  
	  //stmt.close();
	  conn.close();
  }
}
