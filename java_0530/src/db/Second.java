package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class Second {

	public static void main(String[] args) throws Exception {
		  Class.forName("com.mysql.jdbc.Driver");
		  String db="jdbc:mysql://localhost:3306/first";
		  Connection conn=DriverManager.getConnection(db,"root","1234");
		  
		  // Scanner를 통해 값을 입력받기
		  Scanner sc=new Scanner(System.in);
		  int bunho=sc.nextInt();
		  String name=sc.next();
		  String phone=sc.next();
		  int age=sc.nextInt();
		  
		  String sql="insert into member(bunho,name,phone,age)";
		  sql=sql+" values("+bunho+",'"+name+"','"+phone+"',"+age+")";
		  
		  // Statement
		  Statement stmt=conn.createStatement();
		  stmt.executeUpdate(sql);
		  
		  stmt.close();
		  conn.close();
		  
	}

}
