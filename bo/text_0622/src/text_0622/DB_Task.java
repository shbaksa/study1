package text_0622;
import java.sql.*;
import java.util.Scanner;

public class DB_Task {

						
			Scanner sc = new Scanner(System.in);
			
			String sql;
			PreparedStatement pstmt;
			
			public void select () throws Exception 
			{
				Class.forName("org.mariadb.jdbc.Driver");
				String url = "jdbc:mariadb://localhost:3306/test";
				Connection conn = DriverManager.getConnection(url,"root","0000");
				
				sql = "select * from test_member";
				pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				
				while(rs.next())
				{
					System.out.print("이름 : " +  rs.getString("name")+ " / ");
					System.out.print("주소 : " +  rs.getString("address")+ " / ");
					System.out.println("번호 : " +  rs.getString("phone")+ "  ");
				}
				
				rs.close();
				conn.close();
				pstmt.close();			
				
			}
			
			public void insert () throws Exception
			{
				Class.forName("org.mariadb.jdbc.Driver");
				String url = "jdbc:mariadb://localhost:3306/test";
				Connection conn = DriverManager.getConnection(url,"root","0000");		
				
				System.out.println("이름입력");
				String name = sc.next();
				System.out.println("주소입력");
				String address = sc.next();
				System.out.println("번호입력");
				String phone = sc.next();
				
				sql = "insert into test_member(name,address,phone) values(?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,name);
				pstmt.setString(2,address);
				pstmt.setString(3,phone);
				pstmt.executeUpdate();
				conn.close();
				pstmt.close();						
			
			}
		

}
