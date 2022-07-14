package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class BoardDao {
	Connection conn;
	PreparedStatement pstmt;
	public BoardDao() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
	    String db="jdbc:mysql://localhost:3306/first";
	    conn=DriverManager.getConnection(db,"root","1234");
	}
	
    public void list(HttpServletRequest request) throws Exception
    {
    	// 쿼리 작성
    	String sql="select * from board1";
    	   
    	// 심부름꾼 생성
    	PreparedStatement pstmt=conn.prepareStatement(sql);
    	   
    	// 쿼리 실행  => ResultSet결과 => 출력
    	ResultSet rs=pstmt.executeQuery();
    	
    	// dto를 저장할 ArrayList생성
    	ArrayList<BoardDto> list=new ArrayList<BoardDto>();
    	// 레코드값을 dto에 하나씩 저장 => ArrayList 에 add
    	while(rs.next()) 
    	{
    		BoardDto bdto=new BoardDto();
    		bdto.setId(rs.getInt("id"));
    		bdto.setName(rs.getString("name"));
    		bdto.setTitle(rs.getString("title"));
    		bdto.setContent(rs.getString("content"));
    	    bdto.setReadnum(rs.getInt("readnum"));
    	    bdto.setWriteday(rs.getString("writeday"));
    	    
    	    list.add(bdto);
    	}
    	// request영역에 ArrayList를 담는다
    	request.setAttribute("list", list);
    }
    public void content(HttpServletRequest request) throws Exception
    {
    	// request
        String id=request.getParameter("id");
        
        // 쿼리 생성
        String sql="select * from board1 where id=?";
        
        // 심부름꾼 생성
        PreparedStatement pstmt=conn.prepareStatement(sql);
        pstmt.setString(1, id);
        
        // 쿼리 실행 => ResultSet => 출력
        ResultSet rs=pstmt.executeQuery();
        rs.next();
        
        // 레코드 값을 dto에 저장
        // 레코드가 1개 이므로 ArrayList X, Dto만 사용
        // 하나의 레코드를 dto에 저장하기
        BoardDto bdto=new BoardDto();
		bdto.setId(rs.getInt("id"));
		bdto.setName(rs.getString("name"));
		bdto.setTitle(rs.getString("title"));
		bdto.setContent(rs.getString("content").replace("\r\n","<br>"));
	    bdto.setReadnum(rs.getInt("readnum"));
	    bdto.setWriteday(rs.getString("writeday"));
	    
	    request.setAttribute("bdto", bdto);
    }
}







