package dao;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.BoardDto;

// 자유게시판
public class BoardDao {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String userid, name, pwd, title, content, dbpwd, id;

	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}

	public void write_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		request.setCharacterEncoding("utf-8");
		title = request.getParameter("title");
		content = request.getParameter("content");
		pwd = request.getParameter("pwd");

		// 비밀번호 => 회원인 경우는 비밀번호가 없어도 된다

		// board테이블의 userid는 로그인 한 경우 세션변수의 userid를 넣으면됨
		// 로그인을 안하였다면 'guest'

		if (session.getAttribute("userid") == null)
			userid = "guest";
		else
			userid = session.getAttribute("userid").toString();

		sql = "insert into board(title,content,pwd,userid,writeday) values(?,?,?,?,now())";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setString(3, pwd);
		pstmt.setString(4, userid);

		pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		response.sendRedirect("../board/list.jsp");

	}

	public void list(HttpServletRequest request) throws Exception {

		sql = "select * from board order by id desc";

		pstmt = conn.prepareStatement(sql);

		rs = pstmt.executeQuery();

		ArrayList<BoardDto> list = new ArrayList<BoardDto>();

		while (rs.next()) {
			BoardDto bdto = new BoardDto();
			bdto.setTitle(rs.getString("title"));
			bdto.setId(rs.getInt("id"));
			bdto.setWriteday(rs.getString("writeday"));
			bdto.setReadnum(rs.getInt("readnum"));
			bdto.setUserid(rs.getString("userid"));

			list.add(bdto);
		}

		// 내장객체 영역에 list저장
		request.setAttribute("list", list);
	}

	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {

		id = request.getParameter("id");

		sql = "update board set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);

		pstmt.executeUpdate();

		response.sendRedirect("../board/content.jsp?id=" + id);

	}
	
	public void content(HttpServletRequest request) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "select * from board where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		BoardDto bdto = new BoardDto();
		bdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		bdto.setId(rs.getInt("id"));
		bdto.setTitle(rs.getString("title"));
		bdto.setReadnum(rs.getInt("readnum"));
		bdto.setUserid(rs.getString("userid"));
		bdto.setWriteday(rs.getString("writeday"));
		
		request.setAttribute("bdto", bdto);
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		// 회원이 삭제를 하였다면 id만 가져온다.
		// guest가 삭제 id,pwd
		
		if(request.getParameter("pwd")==null) {
			id = request.getParameter("id");
			
			sql = "delete from board where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			response.sendRedirect("../board/list.jsp");
		}
		else { // guest가 비밀번호를 보냈다면
			
			id = request.getParameter("id");
			pwd = request.getParameter("pwd");		
			
			// 입력 pwd와 db에 있는 pwd를 비교한다.
			
			sql = "select pwd from board where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();
			dbpwd = rs.getString("pwd");
			
			if(pwd.equals(dbpwd)) {
				sql = "delete from board where id=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
				
				rs.close();
				pstmt.close();
				conn.close();
				
				response.sendRedirect("../board/list.jsp");				
			}
			else {
				rs.close();
				pstmt.close();
				conn.close();
				
				response.sendRedirect("../board/content.jsp?id="+id);
			}
			
			
		}
	}
		
		

	
	public void dele(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		id =request.getParameter("id");
		
		if(request.getParameter("pwd")!=null) 
			pwd=request.getParameter("pwd");			
		
		sql = "select pwd from board where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		rs.next();
		dbpwd = rs.getString("pwd");
		
		if( ( request.getParameter("pwd")!=null && pwd.equals(dbpwd) ) || request.getParameter("pwd")==null) {
			
			sql = "delete from board where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		
			rs.close();
			pstmt.close();
			conn.close();
		
			response.sendRedirect("../board/list.jsp");		
		}
		else if(request.getParameter("pwd")!=null && !(pwd.equals(dbpwd))){
			
			rs.close();
			pstmt.close();
			conn.close();
			response.sendRedirect("../board/content.jsp?id="+id);
		}
		
		
		
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "select * from board where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		BoardDto bdto = new BoardDto();
		bdto.setContent(rs.getString("content"));
		bdto.setId(rs.getInt("id"));
		bdto.setTitle(rs.getString("title"));
		bdto.setUserid(rs.getString("userid"));
		
		request.setAttribute("bdto", bdto);
	}
	
	public void update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id=request.getParameter("id");
		pwd=request.getParameter("pwd");
		title=request.getParameter("title");
		content=request.getParameter("content");
		
		if(request.getParameter("pwd")==null) {
			sql = "update board set content=?, title=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, content);
			pstmt.setString(2, title);
			pstmt.setString(3, id);
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();
			
			response.sendRedirect("../board/content.jsp?id="+id);
		}
		else {
			sql = "select pwd from board where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			rs.next();
			dbpwd = rs.getString("pwd");
			
			if(pwd.equals(dbpwd)) {
				sql = "update board set content=?, title=? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, content);
				pstmt.setString(2, title);
				pstmt.setString(3, id);
				pstmt.executeUpdate();
				
				rs.close();
				pstmt.close();
				conn.close();
				
				response.sendRedirect("../board/content.jsp?id="+id);
			}
			else {
				
				rs.close();
				pstmt.close();
				conn.close();
				
				response.sendRedirect("../board/update.jsp?id="+id);
			}
		}
			
	}
	
	public void upd(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id=request.getParameter("id");
		if(request.getParameter("pwd")!=null)
			pwd=request.getParameter("pwd");
		title=request.getParameter("title");
		content=request.getParameter("content");
		
		sql = "select pwd from board where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();
		rs.next();
		dbpwd = rs.getString("pwd");

		if( ( request.getParameter("pwd")!=null && pwd.equals(dbpwd) ) || request.getParameter("pwd")==null) {
			
			sql = "update board set content=?, title=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, content);
			pstmt.setString(2, title);
			pstmt.setString(3, id);
			pstmt.executeUpdate();
			
			rs.close();
			pstmt.close();
			conn.close();
			
			response.sendRedirect("../board/content.jsp?id="+id);
		}
		else if( request.getParameter("pwd")!=null && !(pwd.equals(dbpwd)) ) {
			
			rs.close();
			pstmt.close();
			conn.close();
			
			response.sendRedirect("../board/update.jsp?id="+id);			
		}
		
		
		
	}
}











