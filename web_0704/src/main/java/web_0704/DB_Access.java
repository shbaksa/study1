package web_0704;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DB_Access {

   // 전역변수 설정
   Connection conn;
   PreparedStatement pstmt;
   // DB연결을 생성자를 통해 처리
   public DB_Access() throws Exception
   {
	    // DB연결
	    Class.forName("com.mysql.jdbc.Driver");
	    String db="jdbc:mysql://localhost:3306/second";
	    conn=DriverManager.getConnection(db,"root","1234");
	    // 다른 메소드에서 접근하고자 하는 속성 => 전역변수
   }
   public void table_create() throws Exception
   {
	    
	    // 쿼리 생성
	    String sql="create table test2(name char(10), age int)";
	    
	    // 심부름꾼 생성
	    pstmt=conn.prepareStatement(sql);
	    
	    // 쿼리 실행
	    pstmt.executeUpdate();
	    
	    // close
	    pstmt.close();
	    conn.close(); 
   }
   // 이름과 나이를 입력하는 메소드
   public void insert() throws Exception
   {   
	   // 쿼리 생성
	   String sql="insert into test(name,age) values('홍길동',33)";
	   
	   // 심부름꾼 생성
	   pstmt=conn.prepareStatement(sql);
	   
	   // 쿼리 실행
	   pstmt.executeUpdate();
	     
	   // close
	   pstmt.close();
	   conn.close();
   }
   
   
}











