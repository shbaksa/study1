package upload;

import java.io.File;
import java.io.IOException;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UploadDao {
	Connection conn;
	PreparedStatement pstmt;
    public UploadDao() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
        String db="jdbc:mysql://localhost:3306/second";
        conn=DriverManager.getConnection(db,"root","1234");
    }
    
    public void write_ok(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	 // MultipartRequest객체 생성 (파일이 업로드)
    	String path=request.getRealPath("/upload/img");
    	int size=1024*1024*30;
    	MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
    	
        // request => multi로 접근
        String title=multi.getParameter("title");
        String name=multi.getParameter("name");
        String content=multi.getParameter("content");
        String fname=multi.getFilesystemName("fname"); // 시스템에 저장된 파일이름
        
        //out.print(fname+" : ");
        //out.print(multi.getOriginalFileName("fname")); // 원래이름
        // 쿼리 생성
        String sql="insert into upload(title,name,content,fname,writeday)  values(?,?,?,?,now())";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, title);
        pstmt.setString(2, name);
        pstmt.setString(3, content);
        pstmt.setString(4, fname);
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
        // close
        close();
        
        // list로 이동
        response.sendRedirect("list.jsp");
    }
    
    public ResultSet list() throws Exception
    {
        // 쿼리 생성
        String sql="select * from upload order by id desc";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        
        // 쿼리 실행
        ResultSet rs=pstmt.executeQuery();
        
        return rs;
    }
    
    public void readnum(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	  // request
        String id=request.getParameter("id");
        
        // 쿼리 생성
        String sql="update upload set readnum=readnum+1 where id=?";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
        // close
        close();
        
        // content로 이동
        response.sendRedirect("content.jsp?id="+id);
    }
    
    public ResultSet content(HttpServletRequest request) throws Exception
    {
    	// request
        String id=request.getParameter("id");
        
        // 쿼리 생성
        String sql="select * from upload where id=?";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        
        // 쿼리 실행
        ResultSet rs=pstmt.executeQuery();
        
        return rs;
    }
    
    public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception
    {
    	// request
        String id=request.getParameter("id");
        String fname=request.getParameter("fname"); // 삭제를 위한 파일이름을 가져오기
        
        // 쿼리 생성
        String sql="delete from upload where id=?";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
       // 기존 그림을 삭제하기
        String path=request.getRealPath("/upload/img"); // 파일이 있는 경로
        File file=new File(path+"/"+fname); // 경로+파일명
        if(file.exists())
        	file.delete();
        
        // close
        close();
        
        // list로 이동
        response.sendRedirect("list.jsp");
    }
    
    public ResultSet update(HttpServletRequest request) throws Exception
    {
    	 // request
        String id=request.getParameter("id");
        
        // 쿼리 생성
        String sql="select * from upload where id=?";
        
        // 심부름꾼 생성
        pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        
        // 쿼리 실행
        ResultSet rs=pstmt.executeQuery();
        
        return rs;
    }
    
    public void update_ok(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	String path=request.getRealPath("/upload/img");
        int size=1024*1024*30;
        MultipartRequest multi=new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
       
        String title=multi.getParameter("title");
        String name=multi.getParameter("name");
        String content=multi.getParameter("content");
        String fname=multi.getFilesystemName("fname");  
        String id=multi.getParameter("id");
        String fname2=multi.getParameter("fname2"); //기존의 그림파일명
        
        if(fname==null) // 기존그림을 그대로 사용
        {
        	String sql="update upload set title=? , name=?, content=? where id=?";
        	pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, title);
            pstmt.setString(2, name);
            pstmt.setString(3, content);
            pstmt.setString(4, id);
        }
        else  // 기존그림을 바꾸겠다..
        {
        	String sql="update upload set title=? , name=?, content=?, fname=? where id=?";
        	pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, title);
            pstmt.setString(2, name);
            pstmt.setString(3, content);
            pstmt.setString(4, fname);
            pstmt.setString(5, id);
            
            // 기존 그림을 삭제하기
            File file=new File(path+"/"+fname2); // fname2는 기존의 파일명
            if(file.exists())
            	file.delete();
        }
        
        // 쿼리 실행
        pstmt.executeUpdate();
        
        // close;
        close();
        
        // list
        response.sendRedirect("content.jsp?id="+id);
        
    }
    
    public void close() throws Exception
    {
    	pstmt.close();
        conn.close();
    }
}










