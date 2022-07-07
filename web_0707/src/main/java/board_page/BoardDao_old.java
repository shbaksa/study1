package board_page;

import java.sql.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {
     // write_ok ,  list , content 등등 모든 자바처리부분을 여기에 메소드
	// 모든 메소드가 DB 연결을 하므로 소스 중복을 하지 않게
	// 생성자에서 처리한다.
	Connection conn; // 모든 메소드에서 사용할 수 있게 전역변수(멤버변수)
	PreparedStatement pstmt;
	public BoardDao() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
    	String db="jdbc:mysql://localhost:3306/first";
    	conn=DriverManager.getConnection(db,"root","1234");
	}
	
	public void write_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request받기
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String name=request.getParameter("name");
		String content=request.getParameter("content");
		String pwd=request.getParameter("pwd");
		
		// 쿼리 생성
		String sql="insert into board1(title,name,content,pwd,writeday) values(?,?,?,?,now())";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, content);
		pstmt.setString(4, pwd);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		// close
		pstmt.close();
		conn.close();
		
		// list로 이동
		response.sendRedirect("list.jsp");
	}
	
	public ResultSet list(HttpServletRequest request) throws Exception
	{
		// request
		// 사용자의 페이지가 들어오면 페이지를 이용하여 index(페이지의 시작번호)를 구하기
		// 사용자가 원하는 페이지를 변수에 저장
		int page;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
			page=Integer.parseInt(request.getParameter("page"));
		}
		// 시작인덱스 구하기
		int index=(page-1)*10;
		
		// 쿼리 생성
		String sql="select * from board1 order by id desc limit ?,10";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, index);
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
		
		// ResultSet 리턴
		return rs;
	}

	// pstart값 구하여 전달하기
	public int getpage(HttpServletRequest request)
	{
		int page;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		int imsi=page/10;
		if(page%10 == 0)
			imsi--;
		
		int pstart=imsi*10+1;
		
		return pstart;
	}
	
    public int getnow(HttpServletRequest request)
    {
    	int page;
		if(request.getParameter("page")==null)
		{
			page=1;
		}
		else
		{
			page=Integer.parseInt(request.getParameter("page"));
		}
		return page;
    }
    
    public int getchong() throws Exception
    {
    	String sql="select ceil(count(*)/10) as chong from board1";
    	pstmt=conn.prepareStatement(sql);
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	return rs.getInt("chong");
    }
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		String id=request.getParameter("id");
		
		// 쿼리 생성
		String sql="update board1 set readnum=readnum+1 where id=?";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		//close
		pstmt.close();
		conn.close();
		
		// content로 이동
		response.sendRedirect("content.jsp?id="+id);
	}
	
	
	public ResultSet content(HttpServletRequest request) throws Exception
	{
		// request
		String id=request.getParameter("id");
		
		// 쿼리 생성
		String sql="select * from board1 where id=?";
		
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
		
		// ResultSet 리턴
		return rs;
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		
		// db비밀번호
		String dbpwd=getPwd(id);
		
		if(pwd.equals(dbpwd))
		{
		  // 쿼리 생성
		  String sql="delete from board1 where id=?";
		
		  // 심부름꾼 생성
		  pstmt=conn.prepareStatement(sql);
		  pstmt.setString(1, id);
		
		  // 쿼리 실행
		  pstmt.executeUpdate();
		
		  // close
		  pstmt.close();
		  conn.close();
		
		  // list이동
		  response.sendRedirect("list.jsp");
		}
		else
		{
			// close
			pstmt.close();
			conn.close();
			
			// list이동
			response.sendRedirect("content.jsp?id="+id);
		}
		
	}
	
	public ResultSet update(HttpServletRequest request) throws Exception
	{
		// request
		String id=request.getParameter("id");
				
		// 쿼리 생성
		String sql="select * from board1 where id=?";
			
		// 심부름꾼 생성
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
				
		// 쿼리 실행 => ResultSet
		ResultSet rs=pstmt.executeQuery();
				
		// ResultSet 리턴
		return rs;
	}
	
	public void update_ok(HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		// request
		request.setCharacterEncoding("utf-8");
		String title=request.getParameter("title");
		String name=request.getParameter("name");
		String content=request.getParameter("content");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		
		// db비밀번호
		String dbpwd=getPwd(id);
		
		if(pwd.equals(dbpwd))
		{
		  // 쿼리 생성
		  String sql="update board1 set title=?, name=?, content=? where id=?";
		
		  // 심부름꾼 생성
		  pstmt=conn.prepareStatement(sql);
		  pstmt.setString(1, title);
		  pstmt.setString(2, name);
		  pstmt.setString(3, content);
		  pstmt.setString(4, id);
		
		  // 쿼리 실행
		  pstmt.executeUpdate();
		
		  // close
		  pstmt.close();
		  conn.close();
		
		  // content로 이동
		  response.sendRedirect("content.jsp?id="+id);
		}
		else
		{
			// close
			pstmt.close();
			conn.close();
			
			// content로 이동
			response.sendRedirect("update.jsp?id="+id);
		}
	}
	
	public String  getPwd(String id) throws Exception
	{
		String sql="select pwd from board1 where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs=pstmt.executeQuery();
		rs.next();
		return rs.getString("pwd");
	}
	
	
	public void close() throws Exception
	{
		//System.out.println(pstmt.isClosed());
		//System.out.println(conn.isClosed());
        pstmt.close();
		conn.close();
		//System.out.println(pstmt.isClosed());
		//System.out.println(conn.isClosed());
	}
}














