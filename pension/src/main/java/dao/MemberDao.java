package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspWriter;

public class MemberDao {
	Connection conn;
	PreparedStatement pstmt;
    public MemberDao() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
        String db="jdbc:mysql://localhost:3306/pension";
        conn=DriverManager.getConnection(db,"root","1234");
    }
    
    public void userid_check(HttpServletRequest request, JspWriter out) throws Exception
    {
    	// request
    	String userid=request.getParameter("userid");
    	
    	// 쿼리 생성
    	String sql="select count(*) as cnt from member where userid=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, userid);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	out.print(rs.getString("cnt"));
    }
}











