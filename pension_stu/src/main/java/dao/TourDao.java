package dao;

import java.io.File;
import java.sql.*;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.TourDto;

public class TourDao {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String id, title, userid, content, path;
	int size;
	TourDto tdto;

	public TourDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}

	public void write_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		path = request.getRealPath("/tour/img");
		size = 1024 * 1024 * 30;
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());

		Enumeration file = multi.getFileNames(); // 여러개의 파일을 업로드할때 파일 이름을 가져온다

		// 여러개의 파일이 존재
		// fname필드 => 파일1 , 파일2 , 파일3
		String fname = "";
		while (file.hasMoreElements()) { // 여러개의 파일을 , 구분으로 배열로 만듬
			fname = fname + multi.getFilesystemName(file.nextElement().toString()) + ",";
		}

		// null값 없애기
		fname = fname.replace("null,","");

		title = multi.getParameter("title");
		content = multi.getParameter("content");
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

	public void list(HttpServletRequest request) throws Exception {

		sql = "select *,length(fname)-length(replace(fname,',','')) as cnt,substr(fname,1,instr(fname,',')-1) as firstimg from tour order by id desc";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		ArrayList<TourDto> list = new ArrayList<TourDto>();

		while (rs.next()) {

			tdto = new TourDto();
			tdto.setId(rs.getInt("id"));
			tdto.setTitle(rs.getString("title"));
			tdto.setUserid(rs.getString("userid"));
			tdto.setReadnum(rs.getInt("readnum"));
			tdto.setWriteday(rs.getString("writeday"));
			tdto.setCnt(rs.getInt("cnt"));
			tdto.setFirstimg(rs.getString("firstimg"));
			// tdto.setFname(rs.getString("fname"));

			list.add(tdto);
		}

		request.setAttribute("list", list);
	}

	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {

		id = request.getParameter("id");

		sql = "update tour set readnum=readnum+1 where id=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		response.sendRedirect("../tour/content.jsp?id=" + id);
	}

	public void content(HttpServletRequest request) throws Exception {

		request.setCharacterEncoding("utf-8");

		id = request.getParameter("id");

		sql = "select * from tour where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		rs = pstmt.executeQuery();

		rs.next();

		tdto = new TourDto();
		tdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		tdto.setId(rs.getInt("id"));
		tdto.setReadnum(rs.getInt("readnum"));
		tdto.setTitle(rs.getString("title"));
		tdto.setUserid(rs.getString("userid"));
		tdto.setWriteday(rs.getString("writeday"));

		// tdto.setFname(rs.getString("fname")); 여러개의 사진이 들어올때

		// fname을 ,로 구분된 파일을 배열로 변경후 dto에 temp배열에 저장
		// 92.jpg,121.jpg,5.jpg,41.jpg,3.jpg,2.jpg,12.jpg,
		String temp2 = rs.getString("fname");
		tdto.setTemp2(temp2);
		String[] temp = rs.getString("fname").split(",");
		tdto.setTemp(temp);

		int num = temp.length;
		tdto.setNum(num);

		request.setAttribute("tdto", tdto);

		rs.close();
		pstmt.close();
		conn.close();

	}

	public void getThree(HttpServletRequest request) throws Exception {

		sql = "select * from tour order by id desc limit 3";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		ArrayList<TourDto> tlist = new ArrayList<TourDto>();

		while (rs.next()) {
			TourDto tdto = new TourDto();

			if (rs.getString("title").length() > 13)
				tdto.setTitle(rs.getString("title").substring(0, 11) + "...");
			else
				tdto.setTitle(rs.getString("title"));

			tdto.setId(rs.getInt("id"));
			tdto.setWriteday(rs.getString("writeday"));

			tlist.add(tdto);
		}

		request.setAttribute("tlist", tlist);
	}

	public void update(HttpServletRequest request) throws Exception {

		id = request.getParameter("id");

		sql = "select * from tour where id=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		rs = pstmt.executeQuery();
		rs.next();

		TourDto tdto = new TourDto();
		tdto.setId(rs.getInt("id"));
		tdto.setTitle(rs.getString("title"));
		tdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		tdto.setTemp(rs.getString("fname").split(","));

		request.setAttribute("tdto", tdto);

	}

	public void reupdate(HttpServletRequest request, HttpServletResponse response) throws Exception {

		path = request.getRealPath("/tour/img");
		size = 1024 * 1024 * 30;
		MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8", new DefaultFileRenamePolicy());

		id = multi.getParameter("id");

		String[] del = multi.getParameter("del").split(","); // 파일명1,파일명2,
		int num = del.length;

		for (int i = 0; i < num; i++) {

			File imgFile = new File(path + "/" + del[i]);
			if (imgFile.exists())
				imgFile.delete();
		}

		String str = multi.getParameter("str"); // 계속 보관할 파일
		// 새로 업로드 되는 파일의 이름을 저장

		title = multi.getParameter("title");
		content = multi.getParameter("content");

		String fname = "";

		Enumeration file = multi.getFileNames(); // 업로드 폼에 있는 input 태그의 이름 목록
		
		while (file.hasMoreElements())
			fname = fname + multi.getFilesystemName(file.nextElement().toString()) + ",";
		
		// null값 제거
		fname = fname.replace("null,","");
		
		fname = str + fname;
		
		

		sql = "update tour set title=?, content=?, fname=? where id=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, fname);
		pstmt.setString(4, id);

		pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		response.sendRedirect("../tour/content.jsp?id=" + id);
	}

	public void redelete(HttpServletRequest request, HttpServletResponse response) throws Exception {

		path = request.getRealPath("/tour/img");

		id = request.getParameter("id");

		String[] fname = request.getParameter("fname").split(",");
		int num = fname.length;

		for (int i = 0; i < num; i++) {
			File file = new File(path + "/" + fname[i]);
			if (file.exists())
				file.delete();
		}

		sql = "delete from tour where id=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		response.sendRedirect("../tour/list.jsp?id=" + id);
	}

	public void test(HttpServletRequest request) throws Exception {

		System.out.println(request.getParameter("fname"));
	}

}
