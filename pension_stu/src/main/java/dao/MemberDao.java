package dao;

import java.sql.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionIdListener;
import javax.servlet.jsp.JspWriter;

import dto.MemberDto;

// 회원관련
public class MemberDao {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String userid, name, pwd, email, phone, dbpwd;

	public MemberDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}

	public void userid_check(HttpServletRequest request, JspWriter out) throws Exception {
		// request
		userid = request.getParameter("userid");
		// 쿼리생성
		sql = "select count(*) as cnt from member where userid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		ResultSet rs = pstmt.executeQuery();

		rs.next();

		out.print(rs.getString("cnt"));
	}

	public void member_input_ok(HttpServletRequest request, HttpServletResponse response) throws Exception {

		request.setCharacterEncoding("utf-8");
		userid = request.getParameter("userid");
		name = request.getParameter("name");
		pwd = request.getParameter("pwd");
		email = request.getParameter("email");
		phone = request.getParameter("phone");

		sql = "insert into member(userid,name,pwd,email,phone,writeday) ";
		sql = sql + "values(?,?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);
		pstmt.setString(4, email);
		pstmt.setString(5, phone);

		pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		// response.sendRedirect("../main/index.jsp");
		response.sendRedirect("login.jsp");

	}

	public void login_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		userid = request.getParameter("userid");
		pwd = request.getParameter("pwd");

		sql = "select * from member where userid=? && pwd=? && state=0";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, pwd);

		rs = pstmt.executeQuery();

		if (rs.next()) {
			// 세션변수를 생성
			session.setAttribute("userid", rs.getString("userid"));
			session.setAttribute("name", rs.getString("name"));

			// close
			rs.close();
			pstmt.close();
			conn.close();

			// 첫페이지 이동
			response.sendRedirect("../main/index.jsp");
		} else {

			// close
			rs.close();
			pstmt.close();
			conn.close();

			// login로 이동 => 로그인을 실패한 후 이동
			// request.setAttribute("loginerr", "1");
			// response.sendRedirect("../member/login.jsp");
			session.setAttribute("chk", "5");
			response.sendRedirect("../member/login.jsp");
			// response.sendRedirect("../member/login.jsp?loginerr=1"); 
		}
	}

	public void logout(HttpSession session, HttpServletResponse response) throws Exception {

		session.invalidate();
		response.sendRedirect("../main/index.jsp");
	}

	public void member_info(HttpSession session, HttpServletRequest request) throws Exception {

		userid = session.getAttribute("userid").toString();

		sql = "select * from member where userid=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);

		rs = pstmt.executeQuery();

		rs.next();
		// jsp에서 필요한 내용을 전부 request로 각각 생성도 가능

		/*
		 * request.setAttribute("userid", rs.getString("userid"));
		 * request.setAttribute("name", rs.getString("name"));
		 * request.setAttribute("email", rs.getString("email"));
		 * request.setAttribute("phone", rs.getString("phone"));
		 */

		// jsp에서 필요한 내용을 하나의 객체로 만들어서 사용(DTO)
		MemberDto mdto = new MemberDto();
		mdto.setUserid(rs.getString("userid"));
		mdto.setName(rs.getString("name"));
		mdto.setEmail(rs.getString("email"));
		mdto.setPhone(rs.getString("phone"));

		request.setAttribute("mdto", mdto);
	}

	public void pwd_change_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		String old_pwd = request.getParameter("old_pwd");
		pwd = request.getParameter("pwd");

		sql = "select pwd from member where userid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());

		rs = pstmt.executeQuery();
		rs.next();
		dbpwd = rs.getString("pwd");

		if (old_pwd.equals(dbpwd)) {

			sql = "update member set pwd=? where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, session.getAttribute("userid").toString());
			pstmt.executeUpdate();

			rs.close();
			pstmt.close();
			conn.close();
			session.invalidate();
			response.sendRedirect("../member/login.jsp");
		} else {
			rs.close();
			pstmt.close();
			conn.close();

			response.sendRedirect("../member/pwd_change.jsp?pwdchangeerr=1");
		}
	}

	public void info_change(HttpServletRequest request, HttpSession session) throws Exception {

		userid = session.getAttribute("userid").toString();

		sql = "select * from member where userid=?";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);

		rs = pstmt.executeQuery();

		rs.next();

		// jsp에서 필요한 내용을 하나의 객체로 만들어서 사용(DTO)
		MemberDto mdto = new MemberDto();
		mdto.setUserid(rs.getString("userid")); // 세션변수에 있어서 없어도 된다.
		mdto.setName(rs.getString("name")); // 세션변수에 있어서 없어도 된다.
		mdto.setEmail(rs.getString("email"));
		mdto.setPhone(rs.getString("phone"));

		request.setAttribute("mdto", mdto);
	}

	public void info_change_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		email = request.getParameter("email");
		phone = request.getParameter("phone");

		sql = "update member set email=?, phone=? where userid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, phone);
		pstmt.setString(3, session.getAttribute("userid").toString());

		pstmt.executeUpdate();

		pstmt.close();
		conn.close();

		response.sendRedirect("../member/info.jsp");
	}

	public void member_login_userid_search(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {

		request.setCharacterEncoding("utf-8");
		name = request.getParameter("name");
		phone = request.getParameter("phone");

		sql = "select userid from member where name=? && phone=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);

		rs = pstmt.executeQuery();

		if (rs.next()) { // 이름,전화번호가 맞다

			session.setAttribute("useridSearch", rs.getString("userid"));
			session.setAttribute("chk", "1");
			/*
			 * System.out.println(request.getAttribute("useridSearch"));
			 * System.out.println(request.getAttribute("chk"));
			 */
			pstmt.close();
			conn.close();
			rs.close();
			response.sendRedirect("../member/login.jsp");

		} else {
			session.setAttribute("chk", "2");		
			pstmt.close();
			conn.close();
			rs.close();
			response.sendRedirect("../member/login.jsp");
		}
	}

	public void member_login_pwd_search(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		
		request.setCharacterEncoding("utf-8");
		userid = request.getParameter("userid");
		name = request.getParameter("name");
		phone = request.getParameter("phone");
		
		sql = "select pwd from member where userid=? && name=? && phone=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			session.setAttribute("pwdSearch", rs.getString("pwd"));
			session.setAttribute("chk", "3");
			pstmt.close();
			conn.close();
			rs.close();
			response.sendRedirect("../member/login.jsp");
		}
		else {
			session.setAttribute("chk", "4");
			pstmt.close();
			conn.close();
			rs.close();
			response.sendRedirect("../member/login.jsp");
		}
	}
	
	public void member_out(HttpServletResponse response, HttpSession session) throws Exception{
		
		sql = "update member set state=1 where userid=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		// 로그아웃		
		session.invalidate();
		
		response.sendRedirect("../main/index.jsp");
	}
	
}




















