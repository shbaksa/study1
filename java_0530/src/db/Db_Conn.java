package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Db_Conn {
   public static void main(String[] args) throws Exception {
	  Class.forName("com.mysql.jdbc.Driver");
	  String db="jdbc:mysql://localhost:3306/first";
	  Connection conn=DriverManager.getConnection(db,"root","1234");
	  
	  //  입력하는 값이 발생된 후 아래의 내용이 실행
	  
	  String sql="insert into friend(name,juso,age) values('슈퍼맨','몰라',33)";
	  
	  // 심부름꾼 생성 => 자바소스에 있는 쿼리문을 mysql로 가져가서 실행시킬 객체
	  Statement stmt=conn.createStatement(); 
	  
	  stmt.executeUpdate(sql);
	  
  }
}
