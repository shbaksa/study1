package sungjuk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

public class Sungjuk_Daoo {
	
	Connection conn;
	String sql="";
	ResultSet rs;
	PreparedStatement pstmt;
	
	public Sungjuk_Daoo() throws Exception {
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/second";
	conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public ResultSet input() throws Exception {
		
		sql="set @count=0";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();
		
		sql="update sungjuk set id = @count:=@count+1";
		pstmt = conn.prepareStatement(sql);
		pstmt.executeUpdate();

		sql = "select *,(kor+eng+mat) as tot, ceil((kor+eng+mat)/3) as avg from sungjuk order by id desc";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void write_ok(HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("write_name");
		String kor = request.getParameter("write_kor");
		String eng = request.getParameter("write_eng");
		String mat = request.getParameter("write_mat");
		
		sql = "insert into sungjuk(name,kor,eng,mat) values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, kor);
		pstmt.setString(3, eng);
		pstmt.setString(4, mat);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();

	}
	
	public void delete(HttpServletRequest request) throws Exception {
		
		String id = request.getParameter("id");
		
		sql = "delete from sungjuk where id=?";
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
	public ResultSet update(HttpServletRequest request) throws Exception {
		
		String id = request.getParameter("id");
		
		sql = "select * from sungjuk where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();

		return rs;
	}
	
	public void update_ok(HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String kor = request.getParameter("kor");
		String eng = request.getParameter("eng");
		String mat = request.getParameter("mat");
		
		sql = "update sungjuk set name=?, kor=?, eng=?, mat=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, kor);
		pstmt.setString(3, eng);
		pstmt.setString(4, mat);
		pstmt.setString(5, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
}


























