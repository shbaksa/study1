package dao;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspWriter;

import dto.MemberDto;

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
    
    // 회원 가입
    public void member_input_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
    	// request
    	request.setCharacterEncoding("utf-8");
    	String userid=request.getParameter("userid");
    	String name=request.getParameter("name");
    	String pwd=request.getParameter("pwd");
    	String email=request.getParameter("email");
    	String phone=request.getParameter("phone");
    	    	
    	// 쿼리 생성
    	String sql="insert into member(userid,name,pwd,email,phone,writeday) ";
    	sql=sql+" values(?,?,?,?,?,now())";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, userid);
    	pstmt.setString(2, name);
    	pstmt.setString(3, pwd);
    	pstmt.setString(4, email);
    	pstmt.setString(5, phone);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// login으로 이동
    	response.sendRedirect("login.jsp");
    }
    
    public void login_ok(HttpServletRequest request, HttpSession session,
    		HttpServletResponse response) throws Exception
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
    	// 쿼리실행
    	
    	ResultSet rs=pstmt.executeQuery();
    	
    	if(rs.next())
    	{
    		// 세션변수를 생성
    		session.setAttribute("userid", rs.getString("userid"));
    		session.setAttribute("name", rs.getString("name"));
    		
    		// close
    		rs.close();
    		pstmt.close();
    		conn.close();
    		
    		// 첫페이지 이동
    		response.sendRedirect("../main/index.jsp");
    	}
    	else
    	{
    		// close
    		rs.close();
    		pstmt.close();
    		conn.close();
    		
    		// login로 이동 => 로그인을 실패한 후 이동
    		
    		session.setAttribute("chk", "5");
    		response.sendRedirect("login.jsp");
    	}
    	
    }
    
    public void logout(HttpSession session,HttpServletResponse response) throws Exception
    {
    	session.invalidate();
    	
    	response.sendRedirect("../main/index.jsp");
    }
    
    public void member_info(HttpSession session, HttpServletRequest request) throws Exception
    {
    	// session객체에서 사용자아이디를 저장
    	String userid=session.getAttribute("userid").toString();
    	
    	// 쿼리 생성
    	String sql="select * from member where userid=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, userid);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	// jsp에서 필요한 내용을 전부 request로 각각 생성도 가능
    	//request.setAttribute("userid", rs.getString("userid"));
    	//request.setAttribute("name", rs.getString("name"));
    	//request.setAttribute("email", rs.getString("email"));
    	//request.setAttribute("phone", rs.getString("phone"));
    	
    	// jsp에서 필요한 내용을 하나의 객체로 만들어서 사용(dto)
    	MemberDto mdto=new MemberDto();
    	mdto.setUserid(rs.getString("userid"));
    	mdto.setName(rs.getString("name"));
    	mdto.setEmail(rs.getString("email"));
    	mdto.setPhone(rs.getString("phone"));
    	
    	request.setAttribute("mdto", mdto);
    		
    }
    
    public void pwd_change_ok(HttpServletRequest request,HttpSession session,
    		HttpServletResponse response) throws Exception
    {
    	// request
    	String old_pwd=request.getParameter("old_pwd");
    	String pwd=request.getParameter("pwd");
    	
    	// db에 있는 비번을 읽어오기
    	String sql="select pwd from member where userid=?";
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, session.getAttribute("userid").toString());
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	String dbpwd=rs.getString("pwd");
    	
    	if(old_pwd.equals(dbpwd))
    	{
    		// 비밀번호 변경
    		sql="update member set pwd=? where userid=?";
    		pstmt=conn.prepareStatement(sql);
    		pstmt.setString(1, pwd);
    		pstmt.setString(2, session.getAttribute("userid").toString());
    		
    		pstmt.executeUpdate();
    		session.invalidate();
    		
    		// close
    		pstmt.close();
    		conn.close();
    		
    		response.sendRedirect("../member/login.jsp");
    	}
    	else
    	{
    		response.sendRedirect("../member/pwd_change.jsp?chk=1");
    	}
    }
    
    public void member_update(HttpSession session,HttpServletRequest request) throws Exception
    {
    	// session객체에서 사용자아이디를 저장
    	String userid=session.getAttribute("userid").toString();
    	
    	// 쿼리 생성
    	String sql="select * from member where userid=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, userid);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	 
    	
    	// jsp에서 필요한 내용을 하나의 객체로 만들어서 사용(dto)
    	MemberDto mdto=new MemberDto();
    	mdto.setUserid(rs.getString("userid"));
    	mdto.setName(rs.getString("name")); // 세션변수에 있으므로 없어도 된다..
    	mdto.setEmail(rs.getString("email"));
    	mdto.setPhone(rs.getString("phone"));
    	
    	request.setAttribute("mdto", mdto);
    }
    
    public void member_update_ok(HttpServletRequest request,
    		HttpSession session, HttpServletResponse response) throws Exception
    {
    	// request
    	String email=request.getParameter("email");
    	String phone=request.getParameter("phone");
    	String userid=session.getAttribute("userid").toString();
    	
    	// 쿼리 생성
    	String sql="update member set email=?,phone=? where userid=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, email);
    	pstmt.setString(2, phone);
    	pstmt.setString(3, userid);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("member_info.jsp");
    	
    }
    
    public void userid_search(HttpServletRequest request,HttpServletResponse response,
    		HttpSession session) throws Exception
    {
    	// request
    	request.setCharacterEncoding("utf-8");
    	String name=request.getParameter("name");
    	String phone=request.getParameter("phone");
    	
    	// 쿼리 생성
    	String sql="select userid from member where name=? and phone=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, name);
    	pstmt.setString(2, phone);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	if(rs.next()) // 이름,전화번호가 맞다
    	{
    		session.setAttribute("imsiuser", rs.getString("userid"));
    		session.setAttribute("chk", "1");
    		System.out.println(request.getAttribute("userid"));
    		System.out.println(request.getAttribute("chk"));
    		response.sendRedirect("login.jsp");
    		
    	}
    	else
    	{
    		session.setAttribute("chk", "2");
    		response.sendRedirect("login.jsp");
    	}
    	
    }
    
    public void pwd_search(HttpServletRequest request, HttpServletResponse response,
    		HttpSession session) throws Exception
    {
    	// request
    	request.setCharacterEncoding("utf-8");
    	String name=request.getParameter("name");
    	String userid=request.getParameter("userid");
    	String phone=request.getParameter("phone");
    	
    	// 쿼리 실행
    	String sql="select pwd from member where name=? and userid=? and phone=?";
    	
    	// 심부름꾼 실행
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, name);
    	pstmt.setString(2, userid);
    	pstmt.setString(3, phone);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	if(rs.next())
    	{
    		session.setAttribute("pwd", rs.getString("pwd"));
    		session.setAttribute("chk", "3");
    		pstmt.close();
    		conn.close();
    		response.sendRedirect("login.jsp");
    	}
    	else
    	{
    		pstmt.close();
    		conn.close();
    		session.setAttribute("chk", "4");
    		response.sendRedirect("login.jsp");
    	}
    }
}











