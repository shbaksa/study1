package db0531;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB_Select2 {

	public static void main(String[] args) throws Exception {
		// mysql에 있는 member테이블에 있는 값을 가져오기
        // DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn=DriverManager.getConnection(db,"root","1234");
		
		// 쿼리문 작성
		String sql="select * from member";
		
		// 심부름꾼 생성
		Statement stmt=conn.createStatement();
		
		// 쿼리 실행
		ResultSet rs=stmt.executeQuery(sql);
		
		// 출력 => 여러개 출력(while)
		//System.out.println(rs.next()); // 레코드 이동후 레코드가 존재하면 true, 아니면 false
		while(rs.next()) 
		{
			System.out.print(rs.getInt("bunho")+" ");
			System.out.print(rs.getString("name")+" ");
			System.out.print(rs.getString("phone")+" ");
			System.out.println(rs.getString("age"));
		}
		
		rs.close();
		stmt.close();
		conn.close();
	}

}







