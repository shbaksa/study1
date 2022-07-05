package sungjuk;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.filters.ExpiresFilter.XHttpServletResponse;

public class Sungjuk_Dao {
	Connection conn;
	PreparedStatement pstmt;
	
	public Sungjuk_Dao() throws Exception
	{
		// DB연결
        Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/second";
    	conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public void write_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{ 
        // request
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String kor=request.getParameter("kor");
		String eng=request.getParameter("eng");
		String mat=request.getParameter("mat");
		
		// 쿼리 생성
		String sql="insert into sungjuk(name,kor,eng,mat) values(?,?,?,?)";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, kor);
		pstmt.setString(3, eng);
		pstmt.setString(4, mat);
		// 쿼리 실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		// list로 이동
		response.sendRedirect("list.jsp");
	}
	
	// list문서
	public ResultSet list() throws Exception
	{
		// 쿼리 생성
		String sql="select * from sungjuk";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
		
		// 리턴
		return rs;
	}
	
	// delete
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		String id=request.getParameter("id");
		
		// 쿼리 생성
		String sql="delete from sungjuk where id=?";
		
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
	
	// udpate
	public ResultSet update(HttpServletRequest request) throws Exception
	{
		// request
		String id=request.getParameter("id");
		
		// 쿼리 생성
		String sql="select * from sungjuk where id=?";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
		
		// rs를 리턴
		return rs;
	}
	
	//update_ok
	public void update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String kor=request.getParameter("kor");
		String eng=request.getParameter("eng");
		String mat=request.getParameter("mat");
		String id=request.getParameter("id");
		
		// 쿼리 생성
		String sql="update sungjuk set name=?, kor=?, eng=?, mat=? where id=?";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, kor);
		pstmt.setString(3, eng);
		pstmt.setString(4, mat);
		pstmt.setString(5, id);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		// list로 이동
		response.sendRedirect("list.jsp");
	}
}









