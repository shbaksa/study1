package member;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;

public class Member_Dao {
	Connection conn;
	PreparedStatement pstmt;
	
	public Member_Dao() throws Exception
	{
		// DB연결
        Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/second";
    	conn=DriverManager.getConnection(db,"root","1234");
	}
    public void insert(HttpServletRequest request) throws Exception
    {
        // request
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("name");
        String age=request.getParameter("age");
        
        // 쿼리 생성
        String sql="insert into member(name,age) values(?,?)";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, age);
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
        // close
        pstmt.close();
        conn.close();
    }
    public ResultSet list() throws Exception
    {
        // 쿼리 생성
        String sql="select * from member order by id desc";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        
        // 쿼리 실행  => ResultSet
        ResultSet rs=pstmt.executeQuery();
        
        return rs;
    }
    
    public void delete(HttpServletRequest request) throws Exception
    {
    	// request
        String id=request.getParameter("id");
        
        // 쿼리 생성
        String sql="delete from member where id=?";
        
        // 심부름꾼 생성
        PreparedStatement pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
        // close
        pstmt.close();
        conn.close();
    }
    
}











