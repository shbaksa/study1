package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class Update_Ex {
   public static void main(String[] args) throws Exception {
	   // 테이블의 내용을 수정하기
	   
	   // DB연결
	   Class.forName("com.mysql.jdbc.Driver");
	   String db="jdbc:mysql://localhost:3306/first";
	   Connection conn=DriverManager.getConnection(db,"root","1234");
	   
	   // 내용 보여주기
	   String sql="select * from member";
	   PreparedStatement pstmt=conn.prepareStatement(sql);
	   ResultSet rs=pstmt.executeQuery();
	   while(rs.next()) 
	   {
		   System.out.print(rs.getInt("bunho")+" ");
		   System.out.print(rs.getString("name")+" ");
		   System.out.print(rs.getString("phone")+" ");
		   System.out.print(rs.getInt("age"));
		   System.out.println(); // 줄바꿈
	   }
	   
	   // 바꾸고 싶은 사람의 정보를 위의 출력된 내용을 보고 콘솔창에 입력
	   Scanner sc=new Scanner(System.in);
	   System.out.print("수정할 이름 : ");
	   String name=sc.next();
	   System.out.print("수정할 전화 : ");
	   String phone=sc.next();
	   System.out.print("수정할 나이 : ");
	   int age=sc.nextInt();
	   System.out.print("수정할 번호 : ");
	   int bunho=sc.nextInt();
	   
	   // 수정쿼리
	   String sql2="update member set name=? , phone=? , age=? where bunho=?";
	   
	   // 심부름꾼 생성
	   PreparedStatement pstmt2=conn.prepareStatement(sql2);
       pstmt2.setString(1, name);
	   pstmt2.setString(2, phone);
	   pstmt2.setInt(3, age);
	   pstmt2.setInt(4, bunho);
	   
	   // 쿼리 실행
	   pstmt2.executeUpdate();
	   
	   // close;
	   sc.close();
	   pstmt.close();
	   pstmt2.close();
	   conn.close();
  }
}













