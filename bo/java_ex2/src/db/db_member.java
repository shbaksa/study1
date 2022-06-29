package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Scanner;

public class db_member {

	public static void main(String[] args) throws Exception{
		
		
			Scanner sc = new Scanner(System.in);
			
			int num = sc.nextInt();
			String nam = sc.next();
			String phon = sc.next();
			int ag = sc.nextInt();
		
			Class.forName("org.mariadb.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3306/member","root","0000");
			
			//String sql = "insert into memb(bunho,name,phone,age) values("+num+", '"+nam+"' , '"+phon+"' , "+ag+")";
			//String sql = "insert into memb(bunho,name,phone,age) values(111,'홍길동','010-1234-5678',42)";
			String sql = "insert into memb(bunho,name,phone,age) values(?,?,?,?)";
			
			
			//Statement stmt = conn.createStatement();
			//stmt.executeUpdate(sql);
				
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, num);
			pstmt.setString(2, nam);
			pstmt.setString(3, phon);					
			pstmt.setInt(4, ag);
			pstmt.executeUpdate();
			
			
			conn.close();
			
	}

}
