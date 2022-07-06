package board;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {
     // write_ok ,  list , content 등등 모든 자바처리부분을 여기에 메소드
	// 모든 메소드가 DB 연결을 하므로 소스 중복을 하지 않게
	// 생성자에서 처리한다.
	Connection conn; // 모든 메소드에서 사용할 수 있게 전역변수(멤버변수)
	PreparedStatement pstmt;
	public BoardDao() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/second";
    	conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public void write_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request받기
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String name=request.getParameter("name");
		String content=request.getParameter("content");
		String pwd=request.getParameter("pwd");
		
		// 쿼리 생성
		String sql="insert into board(title,name,content,pwd,writeday) values(?,?,?,?,now())";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, content);
		pstmt.setString(4, pwd);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		// list로 이동
		response.sendRedirect("list.jsp");
	}
	
	public ResultSet list() throws Exception
	{
		// request
		// 쿼리 생성
		String sql="select * from board order by id desc";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
		
		// ResultSet 리턴
		return rs;
	}

	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		String id=request.getParameter("id");
		
		// 쿼리 생성
		String sql="update board set readnum=readnum+1 where id=?";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		//close
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
		String sql="select * from board where id=?";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
		
		// ResultSet 리턴
		return rs;
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		
		// db비밀번호
		String dbpwd=getPwd(id);
		
		if(pwd.equals(dbpwd))
		{
		  // 쿼리 생성
		  String sql="delete from board where id=?";
		
		  // 심부름꾼 생성
		  pstmt=conn.prepareStatement(sql);
		  pstmt.setString(1, id);
		
		  // 쿼리 실행
		  pstmt.executeUpdate();
		
		  // close
		  pstmt.close();
		  conn.close();
		
		  // list이동
		  response.sendRedirect("list.jsp");
		}
		else
		{
			// close
			pstmt.close();
			conn.close();
			
			// list이동
			response.sendRedirect("content.jsp?id="+id);
		}
		
	}
	
	public ResultSet update(HttpServletRequest request) throws Exception
	{
		// request
		String id=request.getParameter("id");
				
		// 쿼리 생성
		String sql="select * from board where id=?";
			
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
				
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
				
		// ResultSet 리턴
		return rs;
	}
	
	public void update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String name=request.getParameter("name");
		String content=request.getParameter("content");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		
		// db비밀번호
		String dbpwd=getPwd(id);
		
		if(pwd.equals(dbpwd))
		{
		  // 쿼리 생성
		  String sql="update board set title=?, name=?, content=? where id=?";
		
		  // 심부름꾼 생성
		  pstmt=conn.prepareStatement(sql);
		  pstmt.setString(1, title);
		  pstmt.setString(2, name);
		  pstmt.setString(3, content);
		  pstmt.setString(4, id);
		
		  // 쿼리 실행
		  pstmt.executeUpdate();
		
		  // close
		  pstmt.close();
		  conn.close();
		
		  // content로 이동
		  response.sendRedirect("content.jsp?id="+id);
		}
		else
		{
			// close
			pstmt.close();
			conn.close();
			
			// content로 이동
			response.sendRedirect("update.jsp?id="+id);
		}
	}
	
	public String  getPwd(String id) throws Exception
	{
		String sql="select pwd from board where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		return rs.getString("pwd");
	}
	
	
	public void close() throws Exception
	{
		//System.out.println(pstmt.isClosed());
		//System.out.println(conn.isClosed());
        pstmt.close();
		conn.close();
		//System.out.println(pstmt.isClosed());
		//System.out.println(conn.isClosed());
	}
}














