package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

import dto.MemberDto;
import dto.ReserveDto;
import dto.RoomDto;

public class AdminDao {
	Connection conn;
	PreparedStatement pstmt;
    public AdminDao() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
        String db="jdbc:mysql://localhost:3306/pension";
        conn=DriverManager.getConnection(db,"root","1234");
    }
    
    public void room_view(HttpServletRequest request) throws Exception // room테이블의 내용을 읽어와서 출력
    {
    	// 쿼리 생성
    	String sql="select * from room order by price asc";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList생성
    	ArrayList<RoomDto> rlist=new ArrayList<RoomDto>();
    	
    	// rs => dto => ArrayList
    	while(rs.next())
    	{
    		RoomDto rdto=new RoomDto();
    		rdto.setId(rs.getInt("id"));
    		rdto.setBang(rs.getString("bang"));
    		rdto.setMin(rs.getInt("min"));
    		rdto.setMax(rs.getInt("max"));
    		rdto.setPrice(rs.getInt("price"));
    		rdto.setState(rs.getInt("state"));
    		
    		rlist.add(rdto);
    	}
    	
    	request.setAttribute("rlist", rlist);
    	
    }
    
    public String content_view(JspWriter out,HttpServletRequest request) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="select content from room where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	//out.print(rs.getString("content"));
    	return rs.getString("content");
    }
    
    public void reserve_check(HttpServletRequest request) throws Exception
    {
    	// 쿼리 생성
    	String sql="select r2.*, r1.bang from room as r1, reserve as r2 ";
    	sql=sql+" where r2.bang_id=r1.id order by r2.id desc";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList
    	ArrayList<ReserveDto> rlist=new ArrayList<ReserveDto>();
    	
    	// rs => dto => rlist
    	while(rs.next())
    	{
    		
    		String[] imsi=rs.getString("outday").split("-");
    		int y=Integer.parseInt(imsi[0]);
    		int m=Integer.parseInt(imsi[1]);
    		int d=Integer.parseInt(imsi[2]);
    		
    		LocalDate today=LocalDate.now();
    		LocalDate dday=LocalDate.of(y, m, d);
    		
    		ReserveDto rdto=new ReserveDto();
    		rdto.setId(rs.getInt("id"));
    		rdto.setInday(rs.getString("inday"));
    		rdto.setOutday(rs.getString("outday"));
    		rdto.setUserid(rs.getString("userid"));
    		rdto.setInwon(rs.getInt("inwon"));
    		rdto.setCharcoal(rs.getInt("charcoal"));
    		rdto.setBbq(rs.getInt("bbq"));
    		rdto.setWriteday(rs.getString("writeday"));
    		
    		if(today.isBefore(dday))
    		  rdto.setState(rs.getInt("state"));
    		else
    		  rdto.setState(3);
    		
    		rdto.setTotal(rs.getInt("total"));
    		rdto.setBang(rs.getString("bang"));
    		
    		rlist.add(rdto);
    	}
    	
    	request.setAttribute("rlist", rlist);
    }
    
    public void reserve_cancel(HttpServletRequest request,
    		HttpServletResponse response) throws Exception
    {
    	// state을 2로 변경
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="update reserve set state=2 where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("reserve_check.jsp");
    }
    
    public void member_check(HttpServletRequest request) throws Exception
    {
    	// 쿼리 작성
    	String sql="select * from member order by name asc";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList생성
    	ArrayList<MemberDto> mlist=new ArrayList<MemberDto>();
    	
    	// rs => dto => mlist
    	while(rs.next())
    	{
    		MemberDto mdto=new MemberDto();
    		mdto.setId(rs.getInt("id"));
    		mdto.setUserid(rs.getString("userid"));
    		mdto.setName(rs.getString("name"));
    		mdto.setState(rs.getInt("state"));
    		mdto.setPhone(rs.getString("phone"));
    		
    		mlist.add(mdto);
    		
    	}
    	
    	request.setAttribute("mlist", mlist);
    	
    }
    
    public void out_ok(HttpServletRequest request , HttpServletResponse response) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="update member set state=2 where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("member_check.jsp");
    }
}
















