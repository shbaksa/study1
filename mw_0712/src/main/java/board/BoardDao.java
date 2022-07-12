package board;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {
	
	Connection conn;
	ResultSet rs;
	PreparedStatement pstmt;
	String name,content,title,id,pwd,dbpwd;
	String sql = "";

	public BoardDao() throws Exception{
		
		Class.forName("com.mysql.jdbc.Driver");
	    String db="jdbc:mysql://localhost:3306/second";
	    conn=DriverManager.getConnection(db,"root","1234");	
	}
	
	public ResultSet list() throws Exception{
		
		sql = "select * from board order by id desc";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void write_ok(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		title = request.getParameter("title");
		name = request.getParameter("name");
		pwd = request.getParameter("pwd");
		content = request.getParameter("content");
		
		sql = "insert into board(title,name,pwd,content,writeday) values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		pstmt.setString(4, content);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
		
	}
	
	public void readnum(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "update board set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
		
	}
	
	public ResultSet content(HttpServletRequest request) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "select * from board where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();

		return rs;
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		title = request.getParameter("title");
		name = request.getParameter("name");
		content = request.getParameter("content");
		
		sql = "update board set title=?, name=?, content=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, content);
		pstmt.setString(4, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
		
	}
	
	public void delete(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "delete from board where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
	
	public void close() throws Exception{
		
		pstmt.close();
		conn.close();
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
