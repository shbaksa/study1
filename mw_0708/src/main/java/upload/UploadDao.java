package upload;

import java.sql.*;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UploadDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql="";
	String title,name,content,fname,id;
	
	public UploadDao() throws Exception{
		 Class.forName("com.mysql.jdbc.Driver");
		 String db="jdbc:mysql://localhost:3306/second";
		 conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public void write_ok(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		// MultipartRequest 객체 생성 ( 파일이 업로드 )
		String path=request.getRealPath("/upload/img");
		int size = 1024*1024*30;
		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		
		
		name = multi.getParameter("name");
		title = multi.getParameter("title");
		content = multi.getParameter("content");
		fname = multi.getFilesystemName("fname");
		
		sql = "insert into upload(name,title,content,fname,writeday) values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, fname);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
	
	public ResultSet list()	throws Exception{
		
		sql = "select * from upload order by id desc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void readnum(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "update upload set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public ResultSet content(HttpServletRequest request, HttpServletResponse response ) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "select * from upload where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void update_ok(HttpServletRequest request , HttpServletResponse response) throws Exception {
		
		String path=request.getRealPath("/upload/img");
		int size = 1024*1024*30;
		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
	
		id = multi.getParameter("id");
		name = multi.getParameter("name");
		title = multi.getParameter("title");
		content = multi.getParameter("content");
		fname = multi.getFilesystemName("fname");
		
		if(fname == null) {
			
			sql = "update upload set name=?, title=?, content=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.setString(4, id);

		}
		
		else {
			
		sql = "update upload set name=?, title=?, content=?, fname=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, title);
		pstmt.setString(3, content);
		pstmt.setString(4, fname);
		pstmt.setString(5, id);
		
		
		}
		pstmt.executeUpdate();
		pstmt.close();
		conn.close();
		
		response.sendRedirect("content.jsp?id="+id);
		
	}
	
	public void delete(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "delete from upload where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("list.jsp");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
