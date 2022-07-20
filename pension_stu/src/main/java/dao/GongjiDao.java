package dao;

// 공지사항
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

	public void write_ok(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		title = request.getParameter("title");
		content = request.getParameter("content");

		if (request.getParameter("gubun") == null) // 체크박스값 확인
			gubun = "0";
		else
			gubun = request.getParameter("gubun");

		sql = "insert into gongji(title,content,gubun,writeday) values(?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, gubun);
		pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		response.sendRedirect("../gongji/list.jsp");
	}

	public void list(HttpServletRequest request) throws Exception {

		sql = "select * from gongji order by gubun desc , id desc";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		ArrayList<GongjiDto> list = new ArrayList<GongjiDto>();

		while (rs.next()) {
			gdto = new GongjiDto();
			gdto.setGubun(rs.getInt("gubun"));
			gdto.setId(rs.getInt("id"));
			gdto.setTitle(rs.getString("title"));
			gdto.setWriteday(rs.getString("writeday"));

			list.add(gdto);
		}

		request.setAttribute("list", list);
		
		rs.close();
		pstmt.close();
		conn.close();
	}

	public void content(HttpServletRequest request) throws Exception {

		id = request.getParameter("id");

		sql = "select * from gongji where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		rs = pstmt.executeQuery();
		rs.next();

		gdto = new GongjiDto();
		gdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		gdto.setGubun(rs.getInt("gubun"));
		gdto.setId(rs.getInt("id"));
		gdto.setTitle(rs.getString("title"));
		gdto.setWriteday(rs.getString("writeday"));
		
		request.setAttribute("gdto", gdto);
		
		rs.close();
		pstmt.close();
		conn.close();

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
	
	public void update(HttpServletRequest request) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "select * from gongji where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		gdto = new GongjiDto();
		gdto.setContent(rs.getString("content"));
		gdto.setGubun(rs.getInt("gubun"));
		gdto.setId(rs.getInt("id"));
		gdto.setTitle(rs.getString("title"));
		gdto.setWriteday(rs.getString("writeday"));
		
		request.setAttribute("gdto", gdto);
		
		rs.close();
		pstmt.close();
		conn.close();
		
	}
	
	public void update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		title = request.getParameter("title");
		content = request.getParameter("content");
		if(request.getParameter("gubun")==null)
			gubun="0";
		else
			gubun = request.getParameter("gubun");
		
		sql = "update gongji set title=?, content=?, gubun=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, gubun);
		pstmt.setString(4, id);
		// System.out.println(pstmt.toString()); => sql문 콘솔창 출력
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../gongji/content.jsp?id="+id);
	}

}









