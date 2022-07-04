package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

public class Member_Dao {
	
	Connection conn;
	PreparedStatement pstmt;
	String sql="";
	
	public Member_Dao() throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		conn = DriverManager.getConnection(db, "root", "1234");
		
	}
	
	public void insert(HttpServletRequest request) throws Exception{
		
		// request
		request.setCharacterEncoding("utf-8");	
		String name= request.getParameter("name");
		String age = request.getParameter("age");
		
		sql = "insert into member(name,age) values(?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, age);

		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		

	}
	
	public ResultSet list() throws Exception{
		
		// 쿼리생성
		sql="select * from member order by id desc";
		
		// 심부름꾼
		pstmt = conn.prepareStatement(sql);
		
		// 쿼리실행 => ResultSet
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void update(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String id = request.getParameter("id");
		
		sql="update member set name=?, age=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, age);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();

	}
	
	public void delete(HttpServletRequest request) throws Exception{
		
		String id = request.getParameter("id");
		
		sql = "delete from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}

}
