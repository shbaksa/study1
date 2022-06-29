package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class select {

	Connection conn;
	Scanner sc = new Scanner(System.in);
	
	select() throws Exception
	{
	String dbURL = "jdbc:mariadb://localhost:3306/ex1";
	String dbID = "root";
	String dbPassword = "0000";
	Class.forName("org.mariadb.jdbc.Driver");
	Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
	this.conn=conn;
	}
	
	public void select1() throws Exception
	{

		
	String sql = "select * from friends";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate();
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		System.out.print("★ ");
		System.out.print(rs.getString("name") );
		System.out.print(" ☆ ");
		System.out.print(rs.getString("address"));
		System.out.print(" ☆ ");
		System.out.print(rs.getInt("phone"));
		System.out.println(" ★ ");
	
	}

	
	}
	
	public void insert() throws Exception
	{
				

		String name = sc.next();
		String add = sc.next();
		int phone = sc.nextInt();
		
					
		String sql = "insert into friends(name,address,phone) values(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

			
		pstmt.setString(1, name);
		pstmt.setString(2, add);
		pstmt.setInt(3, phone);
		pstmt.executeUpdate();
		
	
						
	}
	
	public void update() throws Exception
	{
		
		
		
		String sql = "update friends set name=?, address=? where phone=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		System.out.println("이름, 주소 변경값 입력");
		String na = sc.next();
		String add = sc.next();
		String ph = sc.next();
			
		pstmt.setString(1,na);
		pstmt.setString(2, add);
		pstmt.setString(3,ph);
				
		pstmt.executeUpdate();
		

		
	}
	
	public void delete() throws Exception
	{
		
	
		String sql = "delete from friends where name=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		System.out.println("삭제할 이름 입력");
		String name = sc.next();
		pstmt.setString(1,name);
		pstmt.executeUpdate();			
			
	
	}
	
	public void control() throws Exception
	{
		int choice = 0;
		
		do
		{
			
			switch(choice)
			{
			case 1 :
				System.out.println("현재 DB");
				select1();
				break;
			
			case 2 :
			
				System.out.println("db입력");
				insert();
				break;
				
			case 3 :
			
				System.out.println("삭제");
				delete();
				break;
				
			case 4 :
		
				System.out.println("변경");
				update();
				break;
			}	
			System.out.println("1번 : 조회 "+"2번 : 입력 "+"3번 : 삭제 "+ "4번 : 변경 "+"5번은 종료");
		}while((choice=sc.nextInt()) != 5);
	}

}
