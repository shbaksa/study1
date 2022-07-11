package login;

import java.sql.*;
import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardDao {
	
	Connection conn;
	ResultSet rs;
	PreparedStatement pstmt;
	String sql="";
	String id,name,content,title,pwd,userid;
	
	
	public BoardDao() throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public ResultSet list()	throws Exception{
		
		sql = "select * from member_board order by id desc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void write_ok(HttpServletRequest request , HttpServletResponse response, HttpSession session) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		title = request.getParameter("title");
		content = request.getParameter("content");
		userid = session.getAttribute("userid").toString(); // 문자열로 변경해서 저장
		name = session.getAttribute("name").toString();
		
		sql = "insert into member_board(title,content,userid,name,writeday) values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, userid);
		pstmt.setString(4, name);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();		
		
		response.sendRedirect("list.jsp");
	}
	
	public void readnum(HttpServletRequest request , HttpServletResponse response) throws Exception {
		
		id = request.getParameter("id");
		
		sql = "update member_board set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);		
	}
	
	public ResultSet content(HttpServletRequest request , HttpServletResponse response , HttpSession session) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		
		sql = "select * from member_board where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void update(HttpServletRequest request ,HttpServletResponse response, HttpSession session) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		title = request.getParameter("title");
		content = request.getParameter("content");
		
		sql = "update member_board set title=?, content=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		
		id = request.getParameter("id");
		
		sql = "delete from member_board where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void check_session(HttpSession session , HttpServletResponse response) throws Exception {
		
		if(session.getAttribute("userid")==null)
    		response.sendRedirect("login.jsp");
	}
	
	
	
	public void close() throws Exception {
		
		pstmt.close();
		conn.close();
	}

}
