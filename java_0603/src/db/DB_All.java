package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class DB_All {
    public void insert() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
  	    String db="jdbc:mysql://localhost:3306/first";
  	    Connection conn=DriverManager.getConnection(db,"root","1234");
  	  
  	    Scanner sc=new Scanner(System.in);
  	    int bunho=sc.nextInt();
  	    String name=sc.next(); 
  	    String phone=sc.next();
  	    int age=sc.nextInt();  
  	  	  
  	    // 2번 심부름꾼 생성
  	    String sql="insert into member(bunho,name,phone,age) values(?,?,?,?)";
  	    PreparedStatement pstmt=conn.prepareStatement(sql);
  	    pstmt.setInt(1, bunho);
  	    pstmt.setString(2, name);
  	    pstmt.setString(3, phone);
  	    pstmt.setInt(4, age);
  	    pstmt.executeUpdate();
  	  
    }
    public void select() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// 쿼리문 작성
		String sql="select * from member";
		
		// 심부름꾼 생성
		PreparedStatement pstmt=conn.prepareStatement(sql);
		
		// 쿼리 실행
		ResultSet rs=pstmt.executeQuery();
		
		// 출력 => 여러개 출력(while)
		while(rs.next()) 
		{
			System.out.print(rs.getInt("bunho")+" ");
			System.out.print(rs.getString("name")+" ");
			System.out.print(rs.getString("phone")+" ");
			System.out.println(rs.getString("age"));
		}
    }
    public void delete() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// 쿼리문
		String sql="delete from member where bunho=?";
		
		// 삭제할 레코드의 bunho값을 입력하기
		Scanner sc=new Scanner(System.in);
		int bunho=sc.nextInt();
		
	    // 2번 심부름꾼
		PreparedStatement pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		
		// 쿼리실행
		pstmt.executeUpdate();
    }
    public void update() throws Exception
    {
 
 	   Class.forName("com.mysql.jdbc.Driver");
 	   String db="jdbc:mysql://localhost:3306/first";
 	   Connection conn=DriverManager.getConnection(db,"root","1234");
 	    	   
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
 	   String sql="update member set name=? , phone=? , age=? where bunho=?";
 	   
 	   // 심부름꾼 생성
 	   PreparedStatement pstmt=conn.prepareStatement(sql);
       pstmt.setString(1, name);
 	   pstmt.setString(2, phone);
 	   pstmt.setInt(3, age);
 	   pstmt.setInt(4, bunho);
 	   
 	   // 쿼리 실행
 	   pstmt.executeUpdate();
    }
    
    public void control() throws Exception
    {
    	 Scanner sc=new Scanner(System.in);
		 int chk=0;
		 do
		 {
			 switch(chk)
			 {
			    case 1: select(); break;
			    case 2: insert(); break;
			    case 3: delete(); break;
			    case 4: update(); break;
			 }
			 
			 System.out.print("1. 조회"+" ");
			 System.out.print("2. 입력"+" ");
			 System.out.print("3. 삭제"+" ");
			 System.out.print("4. 수정"+" ");
			 System.out.println("5. 종료");
		 }while((chk=sc.nextInt()) != 5);
    }
    
}
