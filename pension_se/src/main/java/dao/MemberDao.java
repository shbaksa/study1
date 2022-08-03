package dao;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import dto.MemberDto;

public class MemberDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String id,userid,name,email,phone,pwd,oldpwd,dbpwd;

	public MemberDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public void member_input(HttpServletRequest request,HttpServletResponse response, HttpSession session) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		userid = request.getParameter("userid");
		pwd = request.getParameter("pwd");
		name = request.getParameter("name");
		phone = request.getParameter("phone");
		email = request.getParameter("email");
		
		sql = "insert into member(userid,pwd,name,phone,email,writeday) values(?,?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, phone);
		pstmt.setString(5, email);
		pstmt.executeUpdate();
		
		session.setAttribute("userid", userid);
		session.setAttribute("name", name);
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../main/index.jsp");
	}
	
	public void userid_check(HttpServletRequest request, JspWriter out) throws Exception{
		
		userid = request.getParameter("userid");
		
		sql = "select count(*) as cnt from member where userid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		rs = pstmt.executeQuery();
		rs.next();
		
		pstmt.close();
		conn.close();
		
		out.print(rs.getString("cnt"));
	}
	
	public void info(HttpServletRequest request, HttpSession session) throws Exception{
		
		sql = "select * from member where userid=?"; 	
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());
		rs = pstmt.executeQuery();
		rs.next();
		
		MemberDto mdto = new MemberDto();
		mdto.setEmail(rs.getString("email"));
		mdto.setId(rs.getInt("id"));
		mdto.setPhone(rs.getString("phone"));
		mdto.setWriteday(rs.getString("writeday"));
		
		pstmt.close();
		conn.close();
		
		request.setAttribute("mdto", mdto);
	}
	
	public void member_out(HttpServletRequest request , HttpServletResponse response , HttpSession session) throws Exception{
		
		id = request.getParameter("id");
		
		sql = "delete from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		session.invalidate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../main/index.jsp");
	}
	
	public void pwd_change_ok(HttpServletRequest request,HttpServletResponse response, HttpSession session) throws Exception{
		
		oldpwd = request.getParameter("oldpwd");
		sql = "select pwd from member where userid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());
		rs = pstmt.executeQuery();
		rs.next();
		dbpwd = rs.getString("pwd");
		
		if(oldpwd.equals(dbpwd)) {
			
			pwd = request.getParameter("pwd");
			sql = "update member set pwd=? where userid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, session.getAttribute("userid").toString());
			pstmt.executeUpdate();
			
			session.invalidate();
			pstmt.close();
			conn.close();
			response.sendRedirect("../member/login.jsp");
		}
		else {
			pstmt.close();
			conn.close();
			
			response.sendRedirect("../member/pwd_change.jsp");
		}
	}
	
	public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		
		userid = request.getParameter("userid");
		pwd = request.getParameter("pwd");
		
		sql = "select name from member where userid=? && pwd=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, pwd);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			
			session.setAttribute("userid", userid);
			session.setAttribute("name", rs.getString("name"));
			
			pstmt.close();
			conn.close();
			
			response.sendRedirect("../main/index.jsp");
		}
		else {
			pstmt.close();
			conn.close();
			
			response.sendRedirect("../member/login.jsp");
		}
	}
	
	public void useridsearch(HttpServletRequest request , JspWriter out) throws Exception{
		
		name = request.getParameter("name");
		phone = request.getParameter("phone");
		
		sql = "select userid from member where name=? && phone=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {		
			out.print(rs.getString("userid"));
		}
		else
			out.print("1");
	}
	
	public void pwdsearch(HttpServletRequest request, JspWriter out) throws Exception{
		
		userid = request.getParameter("userid");
		name = request.getParameter("name");
		phone = request.getParameter("phone");
		
		sql = "select pwd from member where userid=? && name=? && phone=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		rs = pstmt.executeQuery();
		
		if(rs.next())
			out.print(rs.getString("pwd"));
		else
			out.print("1");
	}
}






















