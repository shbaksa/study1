package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class book_db {

	Connection conn;
	Scanner sc = new Scanner(System.in);
	String sql;

 	book_db() throws Exception
	{
	 String dbURL = "jdbc:mariadb://localhost:3306/ex1";
	 String dbID = "root";
	 String dbPassword = "0000";
	 Class.forName("org.mariadb.jdbc.Driver");
	 Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	 this.conn=conn;
	}
	
	public void select() throws Exception
	{
			sql = "select * from book";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			pstmt.executeUpdate();
			
			while(rs.next())
			{
			
			System.out.println("｜ "+ rs.getString(1) + " ｜ "+ rs.getString(2)+" ｜ "+ rs.getString(3) +" ｜ "+rs.getString(4)+" ｜ "+rs.getString(5) +" ｜ ");
			}
	}
	
	public void insert() throws Exception
	{
		sql = "insert into book(title,name,price,writeday) values(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
				
		System.out.println("제목입력");
		String title = sc.next();
		System.out.println("글쓴이입력");
		String name = sc.next();
		System.out.println("가격입력");
		int price = sc.nextInt();
		System.out.println("출판일 입력");
		String date = sc.next();

		pstmt.setString(1,title);
		pstmt.setString(2,name);
		pstmt.setInt(3,price);
		pstmt.setString(4,date);
		pstmt.executeUpdate();

		}
	
	public void update() throws Exception

	{
		sql = "update book set title=?, name=?, price=?, writeday=? where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		System.out.println("변경할 번호 입력");
		int num = sc.nextInt();
		System.out.println("변경할 제목입력");
		String title = sc.next();
		System.out.println("변경할 글쓴이입력");
		String name = sc.next();
		System.out.println("변경할 가격입력");
		int price = sc.nextInt();
		System.out.println("변경할 출판일 입력");
		String date = sc.next();
		
		pstmt.setInt(5, num);
		pstmt.setString(1,title);
		pstmt.setString(2,name);
		pstmt.setInt(3,price);
		pstmt.setString(4,date);
		pstmt.executeUpdate();
	}

	public void delete() throws Exception

	{
		sql = "delete from book where id=? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		System.out.println("삭제할 번호 입력");
		int num = sc.nextInt();
		pstmt.setInt(1, num);
		pstmt.executeUpdate();			
	}

	public void control() throws Exception
	{
		int choice = 0;
		
		do
		{
			switch(choice)
			{
			case 1: 
				   System.out.println("목록입니다.");
				   select();
				   break;
			case 2:
					System.out.println("입력창");
					insert();
					break;
			case 3:
				 	System.out.println("변경창");
				 	update();
				 	break;
			case 4:
					System.out.println("삭제창");
					delete();
					break;
					}
			System.out.println("1번 : 조회 "+"2번 : 입력 "+"3번 : 변경" + "4번 : 삭제 "+"5번은 종료");
			
		}while((choice=sc.nextInt()) != 5);
	}
}
