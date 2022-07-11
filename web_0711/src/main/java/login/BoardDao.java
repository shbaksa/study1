package login;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardDao {
	// 생성자
	Connection conn; // 모든 메소드에서 사용할 수 있게 전역변수(멤버변수)
	PreparedStatement pstmt;
	public BoardDao() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
    	conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public ResultSet list() throws Exception
	{
		// 쿼리 생성
		String sql="select * from member_board order by id desc";
		
		// 심부름꾼
		pstmt=conn.prepareStatement(sql);
		
		// 쿼리 실행
		ResultSet rs=pstmt.executeQuery();
		
		return rs;
	}
	
	public void write_ok(HttpServletRequest request, HttpSession session,
			HttpServletResponse response) throws Exception
	{
		// request
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String userid=session.getAttribute("userid").toString(); // 문자열로 변경
		String name=session.getAttribute("name").toString();
		
		// 쿼리 생성
		String sql="insert into member_board(title,name,content,userid,writeday) ";
		sql=sql+"values(?,?,?,?,now())";
		
		// 심부름꾼생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, content);
		pstmt.setString(4, userid);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		// close()
		pstmt.close();
		conn.close();
		
		// 이동
		response.sendRedirect("list.jsp");
	}
	
	public void check_session(HttpSession session,HttpServletResponse response) throws Exception
	{
		//System.out.println(session.getAttribute("userid"));
		if(session.getAttribute("userid")==null)
			   response.sendRedirect("login.jsp");
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
	    String id=request.getParameter("id");
	    
	    // 쿼리 생성
	    String sql="update member_board set readnum=readnum+1 where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행
	    pstmt.executeUpdate();
	    
	    // close
	    pstmt.close();
	    conn.close();
	    
	    // content로 이동
	    response.sendRedirect("content.jsp?id="+id);
	    
	}
	
	public ResultSet content(HttpServletRequest request) throws Exception
	{
		// request
	    String id=request.getParameter("id");
	    
	    // 쿼리 생성
	    String sql="select * from member_board where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행 => ResultSet
	    ResultSet rs=pstmt.executeQuery();	
	    
	    return rs;
	}
	
	public void delete(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		// request
		String id=request.getParameter("id");
		
		// 쿼리생성
		String sql="delete from member_board where id=?";
		
		// 심부름꾼
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		//list로 이동
		response.sendRedirect("list.jsp");
	}
	
	public ResultSet update(HttpServletRequest request) throws Exception
	{
		// request
	    String id=request.getParameter("id");
	    
	    // 쿼리 생성
	    String sql="select * from member_board where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행 => ResultSet
	    ResultSet rs=pstmt.executeQuery();	
	    
	    return rs;
	}
	
	public void update_ok(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		// request
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String id=request.getParameter("id");
		
		// 쿼리 생성
		String sql="update member_board set title=?, content=? where id=?";
		
		// 심부름꾼
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		// content로 이동
		response.sendRedirect("content.jsp?id="+id);
	}
}








