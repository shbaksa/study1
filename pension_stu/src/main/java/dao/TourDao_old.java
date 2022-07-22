package dao;

import java.io.File;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.TourDto;

// 여행후기
public class TourDao_old {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String id, title, userid, content, fname, path;
	int size;
	TourDto tdto;

	public TourDao_old() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}

	public void wrtie_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {

		// 파일 업로드 객체 생성

		path = request.getRealPath("/tour/img");
		size = 1024 * 1024 * 10;
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());

		title = multi.getParameter("title");
		content = multi.getParameter("content");
		fname = multi.getFilesystemName("fname");
		userid = session.getAttribute("userid").toString();
		
		sql = "insert into tour(title,content,fname,userid,writeday) values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, fname);
		pstmt.setString(4, userid);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../tour/list.jsp");

	}
	
	public void list(HttpServletRequest request) throws Exception{
		
		sql = "select * from tour order by id desc";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		ArrayList<TourDto> list = new ArrayList<TourDto>();
		
		while(rs.next()) {			
	
			tdto = new TourDto();			
			tdto.setId(rs.getInt("id"));
			tdto.setReadnum(rs.getInt("readnum"));
			tdto.setTitle(rs.getString("title"));
			tdto.setWriteday(rs.getString("writeday"));
			tdto.setFname(rs.getString("fname"));
			tdto.setUserid(rs.getString("userid"));
			
			list.add(tdto);		
		}
		
		request.setAttribute("list", list);
		
		rs.close();
		pstmt.close();
		conn.close();
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "update tour set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../tour/content.jsp?id="+id);
	}
	
	public void content(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		id = request.getParameter("id");
		
		sql = "select * from tour where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		rs.next();
		
		tdto = new TourDto();
		tdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		tdto.setFname(rs.getString("fname"));
		tdto.setId(rs.getInt("id"));
		tdto.setReadnum(rs.getInt("readnum"));
		tdto.setTitle(rs.getString("title"));
		tdto.setUserid(rs.getString("userid"));
		tdto.setWriteday(rs.getString("writeday"));
		
		request.setAttribute("tdto", tdto);
		
		rs.close();
		pstmt.close();
		conn.close();
		
	}
	
	public void update(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id = request.getParameter("id");
		
		sql = "select * from tour where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		tdto = new TourDto();
		tdto.setId(rs.getInt("id"));
		tdto.setTitle(rs.getString("title"));
		tdto.setUserid(rs.getString("userid"));
		tdto.setFname(rs.getString("fname"));
		tdto.setContent(rs.getString("content"));
		
		request.setAttribute("tdto", tdto);
		
		rs.close();
		pstmt.close();
		conn.close();
	}
	
	public void update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
	 	path = request.getRealPath("/tour/img");
		size = 1024*1024*10;		
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());
		
		id = multi.getParameter("id");
		title = multi.getParameter("title");	
		String fname2 = multi.getParameter("fname");
		content = multi.getParameter("content");
		
		if(multi.getFilesystemName("fname")==null)
			fname = "";
		else {			
			fname = ", fname='"+multi.getFilesystemName("fname")+"'";
			File file = new File(path+"/"+fname2);
			if(file.exists())
				file.delete();
		}
		//System.out.println(fname);
		
		sql = "update tour set title=?, content=? "+fname+" where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);		
		pstmt.setString(2, content);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../tour/content.jsp?id="+id);
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "delete from tour where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../tour/list.jsp");
	}
}


















