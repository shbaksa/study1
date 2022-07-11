package login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginDao {

	// 생성자
	Connection conn; // 모든 메소드에서 사용할 수 있게 전역변수(멤버변수)
	PreparedStatement pstmt;
	public LoginDao() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
    	conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public void login_ok(HttpServletRequest request, HttpSession session,
			HttpServletResponse response) throws Exception // 회원체크
	{
		// request
		String userid=request.getParameter("userid");
		String pwd=request.getParameter("pwd");
		
		// 쿼리 생성
		String sql="select * from member where userid=? and pwd=?";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, pwd);
		
		// 쿼리 실행
		ResultSet rs=pstmt.executeQuery();
		
		if(rs.next())     // true:회원이 맞다,   false:잘못된 정보
		{
			// 회원인 경우 세션변수에 값을 저장
			session.setAttribute("userid", rs.getString("userid"));
			session.setAttribute("name", rs.getString("name"));
 
			response.sendRedirect("main.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
 
	}
	
	public void logout(HttpSession session, HttpServletResponse response) throws Exception
	{
		// 세션지운 후 main으로 이동
		session.invalidate();
		
		response.sendRedirect("main.jsp");
	}
}

















