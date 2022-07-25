package dao;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.BoardDto;

public class BoardDao {
	Connection conn;
	PreparedStatement pstmt;
    public BoardDao() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
        String db="jdbc:mysql://localhost:3306/pension";
        conn=DriverManager.getConnection(db,"root","1234");
    }
    
    public void write_ok(HttpServletRequest request, HttpServletResponse response,
    		HttpSession session) throws Exception
    {
    	// request
    	request.setCharacterEncoding("utf-8");
    	String title=request.getParameter("title");
    	String pwd=request.getParameter("pwd");
    	String content=request.getParameter("content");
    	
    	// 비밀번호 => 회원인 경우는 비밀번호가 없어도 된다..
    	
    	// board테이블의 userid는 로그인 한 경우 세션변수의 userid를 
    	// 로그인을 안하였다면 'guest'
    	String userid;
    	if(session.getAttribute("userid")==null)
    	{
    		userid="guest";
    	}
    	else
    	{
    		userid=session.getAttribute("userid").toString();
    	}
    	// 쿼리생성
    	String sql="insert into board(title,pwd,content,userid,writeday) ";
    	sql=sql+" values(?,?,?,?,now())";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, title);
    	pstmt.setString(2, pwd);
    	pstmt.setString(3, content);
    	pstmt.setString(4, userid);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("list.jsp");
    	
    }
    
    public void list(HttpServletRequest request) throws Exception
    {
    	// 쿼리 생성
    	String sql="select * from board order by id desc";
    	
    	// 심부름군 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// 여러개의 dto를 담을수 있는 ArrayList를 생성
    	ArrayList<BoardDto> list=new ArrayList<BoardDto>();
    	
    	// rs에 있는 레코드를 dto에 저장 => ArrayList에 담기
    	while(rs.next())
    	{
    		BoardDto bdto=new BoardDto();
    		bdto.setId(rs.getInt("id"));
    		bdto.setTitle(rs.getString("title"));
    		bdto.setUserid(rs.getString("userid"));
            bdto.setReadnum(rs.getInt("readnum"));
            bdto.setWriteday(rs.getString("writeday"));
            
            list.add(bdto);
    	}
    	
    	// 내장객체 영역에 list저장
    	request.setAttribute("list", list);
    }
    
    public void readnum(HttpServletRequest request,
    		HttpServletResponse response) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="update board set readnum=readnum+1 where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// content로 이동
    	response.sendRedirect("content.jsp?id="+id);
    			
    }
    
    public void content(HttpServletRequest request) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="select * from board where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	// dto에 담기
    	BoardDto bdto=new BoardDto();
    	bdto.setId(rs.getInt("id"));
    	bdto.setTitle(rs.getString("title"));
    	bdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
    	bdto.setUserid(rs.getString("userid"));
    	bdto.setReadnum(rs.getInt("readnum"));
    	bdto.setWriteday(rs.getString("writeday"));
    	
    	request.setAttribute("bdto",bdto);
    }
 
    public void delete(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	// 회원이 삭제를 하였다면 id만 가져온다.
    	// guest가 삭제  id, pwd
    	// request
    	if(request.getParameter("pwd")==null)
    	{
    		String id=request.getParameter("id");
        	
        	// 쿼리 생성
        	String sql="delete from board where id=?";
        	
        	// 심부름꾼 생성
        	pstmt=conn.prepareStatement(sql);
        	pstmt.setString(1, id);
        	
        	// 쿼리 실행
        	pstmt.executeUpdate();
        	
        	// close
        	pstmt.close();
        	conn.close();
        	
        	// list로 이동
        	response.sendRedirect("list.jsp");
    	}
    	else // guest가 비밀번호를 보냈다는거
    	{
    		String id=request.getParameter("id");
    		String pwd=request.getParameter("pwd");
    		
    		// db의 비밀번호 가져오기
    		String sql="select pwd from board where id=?";
    		pstmt=conn.prepareStatement(sql);
    		pstmt.setString(1, id);
    		
    		ResultSet rs=pstmt.executeQuery();
    		rs.next();
    		String dbpwd=rs.getString("pwd"); //db에 있는 비밀번호
    		
    		// 입력 pwd와 db에 있는 pwd를 비교한다.
    		if(pwd.equals(dbpwd))
    		{
      	
            	// 쿼리 생성
            	sql="delete from board where id=?";
            	
            	// 심부름꾼 생성
            	pstmt=conn.prepareStatement(sql);
            	pstmt.setString(1, id);
            	
            	// 쿼리 실행
            	pstmt.executeUpdate();
            	
            	// close
            	pstmt.close();
            	conn.close();
            	
            	// list로 이동
            	response.sendRedirect("list.jsp");
    		}
    		else
    		{
    			// content로 이동
    			response.sendRedirect("content.jsp?id="+id);
    		}
    		
    	}
    	
    }
    
    public void update(HttpServletRequest request) throws Exception
    {
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="select * from board where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	// dto에 담기
    	BoardDto bdto=new BoardDto();
    	bdto.setId(rs.getInt("id"));
    	bdto.setTitle(rs.getString("title"));
    	bdto.setContent(rs.getString("content"));
        bdto.setUserid(rs.getString("userid"));
    	// request영역에 저장
    	request.setAttribute("bdto", bdto);
    }
    
    public void update_ok(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	request.setCharacterEncoding("utf-8");
    	String id=request.getParameter("id");
    	String pwd=request.getParameter("pwd");
    	String title=request.getParameter("title");
    	String content=request.getParameter("content");
    	
    	if(request.getParameter("pwd")==null) // 로그인을 한 경우
    	{
    		String sql="update board set content=?, title=? where id=?";
    		pstmt=conn.prepareStatement(sql);
    		pstmt.setString(1, content);
    		pstmt.setString(2, title);
    		pstmt.setString(3, id);
    		
    		pstmt.executeUpdate();
    		
    		pstmt.close();
    		conn.close();
    		
    		response.sendRedirect("content.jsp?id="+id);
    	}
    	else  // guest  들어온 경우
    	{
    		// db의 비밀번호 가져오기
    		String sql="select pwd from board where id=?";
    		pstmt=conn.prepareStatement(sql);
    		pstmt.setString(1, id);
    		
    		ResultSet rs=pstmt.executeQuery();
    		rs.next();
    		String dbpwd=rs.getString("pwd"); //db에 있는 비밀번호
    		
    		if(pwd.equals(dbpwd)) // 비밀번호가 맞으면
    		{
    			sql="update board set content=?, title=? where id=?";
        		pstmt=conn.prepareStatement(sql);
        		pstmt.setString(1, content);
        		pstmt.setString(2, title);
        		pstmt.setString(3, id);
        		
        		pstmt.executeUpdate();
        		
        		pstmt.close();
        		conn.close();
        		
        		response.sendRedirect("content.jsp?id="+id);
    		}
    		else
    		{
    			response.sendRedirect("update.jsp?id="+id);
    		}
    		
    		
    	}
    }
    
    public void getThree(HttpServletRequest request) throws Exception
    {
    	// 쿼리 생성
    	String sql="select * from board order by id desc limit 3";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList
    	ArrayList<BoardDto> blist=new ArrayList<BoardDto>();
    	
    	// rs => dto  => blist
    	while(rs.next()) 
    	{
    	   BoardDto bdto=new BoardDto();
    	   bdto.setId(rs.getInt("id"));
    	   if(rs.getString("title").length()>13)
    		   bdto.setTitle(rs.getString("title").substring(0,11)+"··.");
    	   else
    		   bdto.setTitle(rs.getString("title"));
    	   bdto.setWriteday(rs.getString("writeday"));
    	   
    	   blist.add(bdto);    	   
    	}
    	
    	request.setAttribute("blist", blist);
    	
    }
}
















