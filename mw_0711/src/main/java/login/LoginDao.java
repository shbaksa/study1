package login;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginDao {
	
	Connection conn;
	ResultSet rs;
	PreparedStatement pstmt;
	String sql="";
	String id,name,pwd,userid;
	
	public LoginDao() throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		conn = DriverManager.getConnection(db, "root", "1234");
		
	}
	
	public void login_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		
		
		pwd = request.getParameter("pwd");
		userid = request.getParameter("userid");
		
		sql = "select * from member where userid=? && pwd=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, pwd);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) { // true : 회원이맞다 , false : 회원이 틀리다
			// 회원인 경우 세션변수에 값을 저장
			session.setAttribute("userid", rs.getString("userid"));
			session.setAttribute("name", rs.getString("name"));	
			
			response.sendRedirect("main.jsp");
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}
	
	public void logout(HttpServletResponse response,HttpSession session) throws Exception{
		
		session.invalidate();
		
		response.sendRedirect("main.jsp");
	}

}
