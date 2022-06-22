package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class First {

	public static void main(String[] args) throws Exception {
		  Class.forName("com.mysql.jdbc.Driver");
		  String db="jdbc:mysql://localhost:3306/first";
		  Connection conn=DriverManager.getConnection(db,"root","1234");
		  
		  String sql="insert into member(bunho,name,phone,age)";
		  sql=sql+" values(111,'홍길동','010-1234-5678',42)";
		  
		  // Statement
		  Statement stmt=conn.createStatement();
		  stmt.executeUpdate(sql);
		  
		  stmt.close();
		  conn.close();
		  
	}

}
