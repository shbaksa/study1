package dat;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class BoardDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String name,title,id,content,pwd,dbpwd,bid;
	
	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
	    String db="jdbc:mysql://localhost:3306/first";
	    conn=DriverManager.getConnection(db,"root","1234");		
	}
	
	public ResultSet list() throws Exception{
		
		sql = "select * from board2";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void readnum(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "update board2 set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void bimil_check(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		
		sql = "select pwd from board2 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		rs.next();
		dbpwd = rs.getString("pwd");
		
		rs.close();
		pstmt.close();
		conn.close();
		
		if(pwd.equals(dbpwd))
			response.sendRedirect("readnum.jsp?id="+id);
		else
			response.sendRedirect("list.jsp");
	}
	
	public ResultSet content(HttpServletRequest request) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "select * from board2 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public ResultSet dat_list(int id) throws Exception{
		
		sql = "select * from dat where bid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		
		rs = pstmt.executeQuery();
		
		return rs;

	}
	
	public void dat_delete(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		bid = request.getParameter("bid");
		
		sql = "select pwd from dat where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		rs.next();
		
		dbpwd = rs.getString("pwd");
		
		rs.close();
		
		if(pwd.equals(dbpwd)) {
			
			sql = "delete from dat where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			response.sendRedirect("content.jsp?id="+bid);
		}
		else {
			
			pstmt.close();
			conn.close();
			
			response.sendRedirect("content.jsp?id="+bid);
		}

	}
	
	public void dat_update(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		bid = request.getParameter("bid");
		name = request.getParameter("name");
		content = request.getParameter("content");
		pwd = request.getParameter("pwd");
		
		sql = "select pwd from dat where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		rs.next();
		dbpwd = rs.getString("pwd");
		rs.close();
		
		if(pwd.equals(dbpwd)) {
			
			sql = "update dat set name=?, content=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, content);
			pstmt.setString(3, id);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			response.sendRedirect("content.jsp?id="+bid);
		}
		else {
			
			pstmt.close();
			conn.close();
			
			response.sendRedirect("content.jsp?id="+bid);
		}
			
	}
	public void close() throws Exception {
		
		pstmt.close();
		conn.close();
	}

}
