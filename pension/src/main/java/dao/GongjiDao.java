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

import dto.BoardDto;
import dto.GongjiDto;

public class GongjiDao {
	Connection conn;
	PreparedStatement pstmt;
    public GongjiDao() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
        String db="jdbc:mysql://localhost:3306/pension";
        conn=DriverManager.getConnection(db,"root","1234");
    }
    
    public void write_ok(HttpServletRequest request,
    		HttpServletResponse response) throws Exception
    {
    	// request
    	request.setCharacterEncoding("utf-8");
    	String title=request.getParameter("title");
    	String content=request.getParameter("content");
    	String gubun;
    	if(request.getParameter("gubun")==null)
            gubun="0";
    	else
    		gubun=request.getParameter("gubun");
    	
    	// 쿼리 생성
    	String sql="insert into gongji(title,content,gubun,writeday)";
    	sql=sql+" values(?,?,?,now())";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, title);
    	pstmt.setString(2, content);
    	pstmt.setString(3, gubun);
    	
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
    	// request x
    	
    	// 쿼리 생성
    	String sql="select * from gongji order by gubun desc ,id desc";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    		
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList를 생성 : dto를 담을
    	ArrayList<GongjiDto> list=new ArrayList<GongjiDto>();
    	
    	// rs를 dto에 저장한후 list에 하나씩 넣기
    	while(rs.next()) 
    	{
    	   GongjiDto gdto=new GongjiDto();
    	   gdto.setTitle(rs.getString("title"));
    	   gdto.setId(rs.getInt("id"));
    	   gdto.setWriteday(rs.getString("writeday"));
    	   gdto.setGubun(rs.getInt("gubun"));
    	   
    	   list.add(gdto);
    	}
    	
    	request.setAttribute("list", list);
    }
    
    public void content(HttpServletRequest request) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="select * from gongji where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	// rs를 dto에 담기
    	GongjiDto gdto=new GongjiDto();
 	    gdto.setTitle(rs.getString("title"));
 	    gdto.setId(rs.getInt("id"));
 	    gdto.setWriteday(rs.getString("writeday"));
 	    gdto.setGubun(rs.getInt("gubun"));
 	    gdto.setContent(rs.getString("content").replace("\r\n","<br>"));
 	    
 	    // dto를 request영역에 저장
 	    request.setAttribute("gdto", gdto);
    }
    
    public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
    	// request
        String id=request.getParameter("id");
        
        // 쿼리 생성
        String sql="delete from gongji where id=?";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
        // close
        pstmt.close();
        conn.close();
        
        // 이동
        response.sendRedirect("list.jsp");
        
    }
    
    public void update(HttpServletRequest request) throws Exception
    { 
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="select * from gongji where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	// rs => dto
    	GongjiDto gdto=new GongjiDto();
 	    gdto.setTitle(rs.getString("title"));
 	    gdto.setId(rs.getInt("id"));
 	    gdto.setGubun(rs.getInt("gubun"));
 	    gdto.setContent(rs.getString("content"));
 	    
 	    // dto를 request영역에 저장
 	    request.setAttribute("gdto", gdto);
    }
    
    public void update_ok(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	System.out.println("update_ok");
    	// request
    	request.setCharacterEncoding("utf-8");
    	String title=request.getParameter("title");
    	String content=request.getParameter("content");
    	String id=request.getParameter("id");
    	String gubun;
    	if(request.getParameter("gubun")==null)
    		gubun="0";
    	else
    		gubun=request.getParameter("gubun");
    	
    	// 쿼리 생성
    	String sql="update gongji set title=?, content=?, gubun=? where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, title);
    	pstmt.setString(2, content);
    	pstmt.setString(3, gubun);
    	pstmt.setString(4, id);
    	System.out.println(pstmt.toString());
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("content.jsp?id="+id);
    }
    
    public void getThree(HttpServletRequest request) throws Exception
    {
    	// 쿼리 생성
    	String sql="select * from gongji order by id desc limit 3";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList
    	ArrayList<GongjiDto> glist=new ArrayList<GongjiDto>();
    	
    	// rs => dto  => blist
    	while(rs.next()) 
    	{
    	   GongjiDto gdto=new GongjiDto();
    	   gdto.setId(rs.getInt("id"));
    	   if(rs.getString("title").length()>13)
    		   gdto.setTitle(rs.getString("title").substring(0,11)+"··.");
    	   else
    		   gdto.setTitle(rs.getString("title"));
    	   gdto.setWriteday(rs.getString("writeday"));
    	   
    	   glist.add(gdto);    	   
    	}
    	
    	request.setAttribute("glist", glist);
    	
    }
}
























