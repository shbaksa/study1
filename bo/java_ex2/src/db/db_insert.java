package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class db_insert {

	public static void main(String[] args) throws Exception {
		
			String dbURL = "jdbc:mariadb://localhost:3306/ex1";
			String dbID = "root";
			String dbPassword = "0000";
			Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

			
			
			
			String show = "select * from friends";
			PreparedStatement show1 = conn.prepareStatement(show);
			show1.executeUpdate();
			
			ResultSet rs = show1.executeQuery();
			
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
			
			show1.close();
			
			Scanner sc  =  new Scanner(System.in);
			
			String name = sc.next();
			String add = sc.next();
			int phone = sc.nextInt();
			
						
			String sql = "insert into friends(name,address,phone) values(?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
	
				
			pstmt.setString(1, name);
			pstmt.setString(2, add);
			pstmt.setInt(3, phone);
			pstmt.executeUpdate();
					
			sql = "delete from friends where name=?";
			pstmt = conn.prepareStatement(sql);
			
			System.out.println("삭제할 이름 입력");
			name = sc.next();
			pstmt.setString(1,name);
			pstmt.executeUpdate();			
				
			pstmt.close();
			sc.close();
			conn.close();
			
			
			
			
	}

}
