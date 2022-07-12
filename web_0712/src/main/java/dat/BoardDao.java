package dat;

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
	    String db="jdbc:mysql://localhost:3306/first";
	    conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public ResultSet list() throws Exception
	{
		// 쿼리 생성
	     String sql="select * from board2";
	     
	     // 심부름꾼 생성
	     PreparedStatement pstmt=conn.prepareStatement(sql);
	     
	     // 쿼리 실행 => ResultSet
	     ResultSet rs=pstmt.executeQuery();
	     
	     return rs;
	}
	
	public void readnum(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		 // request
	    String id=request.getParameter("id");
	    
	    // 쿼리 생성
	    String sql="update board2 set readnum=readnum+1 where id=?";
	    
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
	
	public void bimil_check(HttpServletRequest request,HttpServletResponse response) throws Exception
	{
		 // request
	    String id=request.getParameter("id");
	    String pwd=request.getParameter("pwd");// 폼에 입력 비밀번호
	    
	    // DB에 있는 비밀번호를 가져오기
	    String sql="select pwd from board2 where id=?";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    ResultSet rs=pstmt.executeQuery();
	    rs.next();
	    String dbpwd=rs.getString("pwd"); // Db에 있는 비밀번호
	    
	    // close
	    rs.close();
		pstmt.close();
		conn.close();
		
	    // if문을 통해 확인
	    if(pwd.equals(dbpwd))
	    {
	    	response.sendRedirect("readnum.jsp?id="+id);
	    }
	    else
	    {
	    	response.sendRedirect("list.jsp");
	    }
	}
	
	public ResultSet content(HttpServletRequest request) throws Exception
	{
		 // request
	    String id=request.getParameter("id"); // board2테이블의 id값
	    
	    // 쿼리 생성
	    String sql="select * from board2 where id=?";
	    
	    // 심부름꾼 생성
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    
	    // 쿼리 실행 => ResultSet
	    ResultSet rs=pstmt.executeQuery();
	    
	    return rs;
	}
	
	public ResultSet dat_list(int id) throws Exception
	{
	    String sql="select * from dat where bid=?"; 
	    pstmt=conn.prepareStatement(sql);
	    pstmt.setInt(1,id);
	    ResultSet rs=pstmt.executeQuery();
	    return rs;
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
	    String id=request.getParameter("id"); // dat테이블 id
	    String pwd=request.getParameter("pwd");
	    String bid=request.getParameter("bid"); // board2테이블의  id => content.jsp에 넘겨준다
	    // DB비밀번호 가져오기
	    String sql="select pwd from dat where id=?";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,id);
	    ResultSet rs=pstmt.executeQuery();
	    rs.next();
	    String dbpwd=rs.getString("pwd");
	    
	    if(pwd.equals(dbpwd))
	    {
	      // 쿼리 생성
	      sql="delete from dat where id=?";
	      
	      // 심부름꾼 생성
	      pstmt=conn.prepareStatement(sql);
	      pstmt.setString(1,id);
	      // 쿼리 실행
	      pstmt.executeUpdate();
	      pstmt.toString();
	      // close
	      pstmt.close();
	      conn.close();
	      // content로 이동
	      response.sendRedirect("content.jsp?id="+bid); // board2테이블의 id가 필요
	    }
	    else
	    {
	       // close
	       pstmt.close();
	       conn.close();
	       // content로 이동
	       response.sendRedirect("content.jsp?id="+bid);
	    }
	}
	
	public void dat_update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		 // request
	    request.setCharacterEncoding("utf-8");
	    String name=request.getParameter("name");
	    String content=request.getParameter("content");
	    String pwd=request.getParameter("pwd"); // 폼에 입력된 비밀번호
	    String id=request.getParameter("id"); // dat테이블의 id
	    String bid=request.getParameter("bid"); // board2테이블의 id => content로 돌아갈때 필요
	    
	    // db비밀번호 가져오기
	    String sql="select pwd from dat where id=?";
	    PreparedStatement pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1,id);
	    ResultSet rs=pstmt.executeQuery();
	    rs.next();
	    String dbpwd=rs.getString("pwd");
	    
	    if(pwd.equals(dbpwd))
	    {
	       // 쿼리 생성
	       sql="update dat set name=?, content=? where id=?";
	       
	       // 심부름꾼 생성
	       pstmt=conn.prepareStatement(sql);
	       pstmt.setString(1, name);
	       pstmt.setString(2, content);
	       pstmt.setString(3, id);
	       
	       // 쿼리 실행
	       pstmt.executeUpdate();
	       
	       // close
	       pstmt.close();
	       conn.close();
	       
	       // content이동
	       response.sendRedirect("content.jsp?id="+bid);
	    }
	    else
	    {
	    	// close
	        pstmt.close();
	        conn.close();
	       response.sendRedirect("content.jsp?id="+bid);
	    }
	}
}







