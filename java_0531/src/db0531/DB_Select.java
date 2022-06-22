package db0531;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB_Select {

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
		
		// 출력 => 여러개 출력(for)
		// 레코드의 갯수를 알아내기
		rs.last();  // 테이블의 레코드 끝으로 이동
		int n=rs.getRow();  // 레코드 갯수 가져오기
		System.out.println(n);
		rs.beforeFirst();
		for(int i=1;i<=n;i++)
		{
			rs.next();
			System.out.print(rs.getInt("bunho")+" ");
			System.out.print(rs.getString("name")+" ");
			System.out.print(rs.getString("phone")+" ");
			System.out.println(rs.getString("age"));
		}
		/*
		// 첫번째 레코드로 이동
		rs.next();
		System.out.print(rs.getInt("bunho")+" ");
		System.out.print(rs.getString("name")+" ");
		System.out.print(rs.getString("phone")+" ");
		System.out.println(rs.getString("age"));
		
		// 두번째 레코드로 이동
		rs.next();
		System.out.print(rs.getInt("bunho")+" ");
		System.out.print(rs.getString("name")+" ");
		System.out.print(rs.getString("phone")+" ");
		System.out.println(rs.getString("age"));
		
		// 세번째 레코드 이동
		rs.next();
		System.out.print(rs.getInt("bunho")+" ");
		System.out.print(rs.getString("name")+" ");
		System.out.print(rs.getString("phone")+" ");
		System.out.println(rs.getString("age"));
		
        */
	}

}







