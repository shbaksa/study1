package db0531;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.sql.rowset.WebRowSet;

public class DB_Select {

	public static void main(String[] args) throws Exception {
		// mysql에 있는 member테이블에 잇는 값을 가져오기
		// DB연결 
		Class.forName("com.mysql.jdbc.Driver");
		String db="jdbc:mysql://localhost:3306/first";
		Connection conn = DriverManager.getConnection(db, "root","1234");
		
		// 쿼리문 작성
		String sql="select * from member";
		
		// 심부름꾼 생성
		Statement stmt=conn.createStatement();
		
		// 쿼리 실행
		ResultSet rs=stmt.executeQuery(sql);
		
		
		// 출력 => 여러개 출력(for)
		// 레코드의 갯수를 알아내기
		rs.last(); // 테이블의 레코드 끝으로 이동
		int n=rs.getRow(); // 레코드 갯수 가져오기
		System.out.println(n);
		rs.beforeFirst();
				
		for(int i=1;i<=n;i++)
		{			
			rs.next();			
			System.out.print(rs.getInt("bunho")+" ");
			System.out.print(rs.getString("name")+" ");
			System.out.print(rs.getString("phone")+" ");
			System.out.println(rs.getInt("age"));
		}
		
		rs.close();
		stmt.close();
		conn.close();

		
		/*
		// 첫번째 레코드로 이동
		rs.next();			
		System.out.print(rs.getInt("bunho")+" ");
		System.out.print(rs.getString("name")+" ");
		System.out.print(rs.getString("phone")+" ");
		System.out.println(rs.getInt("age"));
		// 두번째 레코드로 이동
		rs.next(); 
		int b=rs.getInt("bunho");
		String n=rs.getString("name");
		String p=rs.getString("phone");
		int a=rs.getInt("age");
		System.out.println(b+" "+n+" "+p+" "+a);
		// 세번째 레코드로 이동
		rs.next(); 
		int b1=rs.getInt("bunho");
		String n1=rs.getString("name");
		String p1=rs.getString("phone");
		int a1=rs.getInt("age");
		System.out.println(b1+" "+n1+" "+p1+" "+a1);
		// 네번째 레코드로 이동
		rs.next(); 
		int b2=rs.getInt("bunho");
		String n2=rs.getString("name");
		String p2=rs.getString("phone");
		int a2=rs.getInt("age");
		System.out.println(b2+" "+n2+" "+p2+" "+a2);
		rs.next(); 
		int b3=rs.getInt("bunho");
		String n3=rs.getString("name");
		String p3=rs.getString("phone");
		int a3=rs.getInt("age");
		System.out.println(b3+" "+n3+" "+p3+" "+a3);
		rs.next(); 
		int b4=rs.getInt("bunho");
		String n4=rs.getString("name");
		String p4=rs.getString("phone");
		int a4=rs.getInt("age");
		System.out.println(b4+" "+n4+" "+p4+" "+a4);
		*/
		
		
		
		

	}

}
