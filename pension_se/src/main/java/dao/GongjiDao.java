package dao;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.GongjiDto;

public class GongjiDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String title, content, gubun, id;
	GongjiDto gdto;

	public GongjiDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	public void write(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		title = request.getParameter("title");
		content = request.getParameter("content");
		if(request.getParameter("gubun")==null)
			gubun = "0";
		else
			gubun = request.getParameter("gubun");
		
		sql = "insert into gongji(title,content,gubun,writeday) values(?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, gubun);
		
		pstmt.executeUpdate();
		
		response.sendRedirect("../gongji/list.jsp");
	}
	
	public void list(HttpServletRequest request) throws Exception{
		
		sql = "select * from gongji order by gubun desc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		ArrayList<GongjiDto> glist = new ArrayList<GongjiDto>();
		while(rs.next()) {
			GongjiDto gdto = new GongjiDto();
			gdto.setGubun(rs.getInt("gubun"));
			gdto.setId(rs.getInt("id"));
			gdto.setTitle(rs.getString("title"));
			gdto.setWriteday(rs.getString("writeday"));
			//gdto.setContent(rs.getString("content"));
			glist.add(gdto);
		}
		
		pstmt.close();
		conn.close();
		
		request.setAttribute("glist", glist);
	}
	
	public void content(HttpServletRequest request) throws Exception{
		
		id = request.getParameter("id");
		sql = "select * from gongji where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		rs.next();
		GongjiDto gdto = new GongjiDto();
		gdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		gdto.setTitle(rs.getString("title"));
		gdto.setId(rs.getInt("id"));
		gdto.setWriteday(rs.getString("writeday"));
		gdto.setGubun(rs.getInt("gubun"));
		
		pstmt.close();
		conn.close();
		
		request.setAttribute("gdto", gdto);
		
	}
	
	public void update(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		title = request.getParameter("title");
		content = request.getParameter("content");
		if(request.getParameter("gubun")==null)
			gubun = "0";
		else 
			gubun = request.getParameter("gubun");
		
		sql = "update gongji set title=?, content=?, gubun=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, gubun);
		pstmt.setString(4, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../gongji/content.jsp?id="+id);
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "delete from gongji where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../gongji/list.jsp");
	}
}


















