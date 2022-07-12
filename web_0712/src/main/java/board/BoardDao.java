package board;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {
	Connection conn;
	PreparedStatement pstmt;
	public BoardDao() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
	    String db="jdbc:mysql://localhost:3306/second";
	    conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public ResultSet list() throws Exception
	{
		// 쿼리 작성
		String sql="select * from board order by id desc";
		   
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		  
		// 쿼리 실행  => ResultSet결과 => 출력
		ResultSet rs=pstmt.executeQuery();
		
		return rs;
		   
	}
	
	public void write_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
	     request.setCharacterEncoding("utf-8");
	     String name=request.getParameter("name");
	     String title=request.getParameter("title");
	     String pwd=request.getParameter("pwd");
	     String content=request.getParameter("content");
	     
	     // 쿼리 생성
	     String sql="insert into board(name,title,pwd,content,writeday) ";
	     sql=sql+"values(?,?,?,?,now())";
	     
	     // 심부름꾼 생성
	     pstmt=conn.prepareStatement(sql);
	     pstmt.setString(1, name);
	     pstmt.setString(2, title);
	     pstmt.setString(3, pwd);
	     pstmt.setString(4, content);
	     
	     // 쿼리 실행
	     pstmt.executeUpdate();
	     
	     // close();
	     pstmt.close();
	     conn.close();
	     
	     // list.jsp로 이동
	     response.sendRedirect("list.jsp");
	}
}
