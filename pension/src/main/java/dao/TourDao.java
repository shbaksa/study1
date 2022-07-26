package dao;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.BoardDto;
import dto.TourDto;

public class TourDao {
	Connection conn;
	PreparedStatement pstmt;
    public TourDao() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
        String db="jdbc:mysql://localhost:3306/pension";
        conn=DriverManager.getConnection(db,"root","1234");
    }
    
    public void write_ok(HttpServletRequest request, 
    		HttpServletResponse response,
    		HttpSession session) throws Exception
    {
    	String path=request.getRealPath("/tour/img");
    	int size=1024*1024*10;
    	MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
    	
    	Enumeration file=multi.getFileNames(); // 여러개의 파일을 업로드할때 파일 이름을 가져온다..
    	// 여러개의 파일이 존재
    	// fname필드  => 파일1 , 파일2, 파일3
    	String fname="";
    	while(file.hasMoreElements())
    	{
    		 fname=fname+multi.getFilesystemName(file.nextElement().toString())+",";
    	}
    	// null값 없애기
    	fname=fname.replace("null,","");
    	
    	//System.out.println(fname);
    	String title=multi.getParameter("title");
    	String content=multi.getParameter("content");
    	String userid=session.getAttribute("userid").toString();
    	
    	// 쿼리 생성
    	String sql="insert into tour(title,content,userid,fname,writeday) ";
    	sql=sql+" values(?,?,?,?,now())";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, title);
    	pstmt.setString(2, content);
    	pstmt.setString(3, userid);
    	pstmt.setString(4, fname);
    	
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
    	String sql="select *,substr(fname,1,instr(fname,',')-1) as img, length(fname)-length(replace(fname,',','')) as cnt from tour order by id desc";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList생성
    	ArrayList<TourDto> list=new ArrayList<TourDto>();
    	
    	// rs => dto => list에 담기
    	while(rs.next()) 
    	{
    		TourDto tdto=new TourDto();
    		tdto.setId(rs.getInt("id"));
    		tdto.setTitle(rs.getString("title"));
    		tdto.setUserid(rs.getString("userid"));
    		tdto.setWriteday(rs.getString("writeday"));
    		tdto.setCnt(rs.getInt("cnt"));
    		tdto.setImg(rs.getString("img"));
    		list.add(tdto);
    	}
    	
    	request.setAttribute("list",list);
    }
    
    public void readnum(HttpServletRequest request , HttpServletResponse response) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="update tour set readnum=readnum+1 where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("content.jsp?id="+id);
    }
    
    public void content(HttpServletRequest request) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="select * from tour where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	// dto에 담기
    	TourDto tdto=new TourDto();
		tdto.setId(rs.getInt("id"));
		tdto.setTitle(rs.getString("title"));
		tdto.setUserid(rs.getString("userid"));
		tdto.setReadnum(rs.getInt("readnum"));
		tdto.setWriteday(rs.getString("writeday"));
		tdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		
		// fname을 ,로 구분된 파일을 배열로 변경후 dto에 file배열에 저장
		// 7.jpg,5.jpg,4.jpg,31.jpg,22.jpg,11.jpg,
		String[] file=rs.getString("fname").split(",");
		tdto.setFile(file);
		
		request.setAttribute("tdto",tdto);
    }
    
    public void getThree(HttpServletRequest request) throws Exception
    {
    	// 쿼리 생성
    	String sql="select * from tour order by id desc limit 3";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	// ArrayList
    	ArrayList<TourDto> tlist=new ArrayList<TourDto>();
    	
    	// rs => dto  => tlist
    	while(rs.next()) 
    	{
    	   TourDto tdto=new TourDto();
    	   tdto.setId(rs.getInt("id"));
    	   if(rs.getString("title").length()>13)
    		   tdto.setTitle(rs.getString("title").substring(0,11)+"··.");
    	   else
    		   tdto.setTitle(rs.getString("title"));
    	   tdto.setWriteday(rs.getString("writeday"));
    	   
    	   tlist.add(tdto);    	   
    	}
    	
    	request.setAttribute("tlist", tlist);
    	
    }
    
    public void update(HttpServletRequest request) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="select * from tour where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	// rs => dto
    	TourDto tdto=new TourDto();
    	tdto.setId(rs.getInt("id"));
    	tdto.setTitle(rs.getString("title"));
    	tdto.setContent(rs.getString("content"));
    	tdto.setFile(rs.getString("fname").split(","));
    	
    	request.setAttribute("tdto", tdto);
    }
    
    public void update_ok(HttpServletRequest request,
    		HttpServletResponse response) throws Exception
    {
    	String path=request.getRealPath("/tour/img");
    	int size=1024*1024*10;
    	MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
    	
    	// 삭제할 파일 목록을 통해 파일을 삭제
    	String[] del=multi.getParameter("del").split(",");  //  파일명1,파일명2,파일명3,
    	// del={"파일명1","파일명2","파일명3"}
    	for(int i=0;i<del.length;i++)
    	{	
    	   File file=new File(path+"/"+del[i]);
    	     if(file.exists())
    	         file.delete();
    	}
    	
    	String str=multi.getParameter("str"); // 계속 보관할 파일
    	// 새로 업로드 되는 파일의 이름을 저장
    	Enumeration file=multi.getFileNames(); // 업로드폼에 있는 input 태그의 이름목록
    	
    	String fname="";
    	while(file.hasMoreElements())
    	{
    		fname=fname+multi.getFilesystemName(file.nextElement().toString())+",";
    	}
    	
    	// null값 없애기  =>  null,null,aa.jpg,
    	fname=fname.replace("null,","");
    	// 합치기
    	fname=fname+str;
    	String title=multi.getParameter("title");
    	String content=multi.getParameter("content");
    	String id=multi.getParameter("id");
    	
    	// 쿼리 생성
    	String sql="update tour set title=?, content=?, fname=? where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, title);
    	pstmt.setString(2, content);
    	pstmt.setString(3, fname);
    	pstmt.setString(4, id);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("content.jsp?id="+id);
    	
    	
    }
    
    
    public void delete(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	// request
    	String id=request.getParameter("id");
    	
    	// 삭제할 레코드와 관련된 그림파일 삭제하기
    	String sql="select fname from tour where id=?";
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	String[] fname=rs.getString("fname").split(","); // 파일명1,파일명2,파일명3,
    	String path=request.getRealPath("/tour/img");
    	
    	for(int i=0;i<fname.length;i++)
    	{	
    	   File file=new File(path+"/"+fname[i]);
    	   if(file.exists())
    		   file.delete();
    	}
    	
    	// 쿼리 생성
    	sql="delete from tour where id=?";
    	
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
    
}















