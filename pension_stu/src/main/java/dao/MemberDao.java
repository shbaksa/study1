package dao;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;
// 회원관련
public class MemberDao {

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	String userid;

	public MemberDao() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public void userid_check(HttpServletRequest request, JspWriter out) throws Exception{
		// request
		userid = request.getParameter("userid");
		// 쿼리생성
		sql = "select count(*) as cnt from member where userid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		ResultSet rs = pstmt.executeQuery();
		/*
		 * rs.next();
		 * 
		 * out.print(rs.getString("cnt"));
		 */
		if(rs.next())
			out.print(1);
		else
			out.print(0);
	}
}
