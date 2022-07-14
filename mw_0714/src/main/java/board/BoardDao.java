package board;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {
	
	Connection conn;
	ResultSet rs;
	PreparedStatement pstmt;
	int id;
	String sql = "";
	String name,title,content,pwd,writeday,readnum;
	BoardDto bdto;
	ArrayList<BoardDto> list;
	
	public BoardDao() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public void list(HttpServletRequest request) throws Exception{
		
		sql = "select * from board1 order by id desc";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		// dto를 저장할 ArrayList생성
		list = new ArrayList<BoardDto>();
		
		// 레코드값을 dto에 하나씩 저장 => ArrayList 에 add
		while(rs.next()) {
			bdto = new BoardDto();
			bdto.setId(rs.getInt("id"));
			bdto.setName(rs.getString("name"));
			bdto.setContent(rs.getString("content"));
			bdto.setReadnum(rs.getInt("readnum"));
			bdto.setTitle(rs.getString("title"));
			bdto.setWriteday(rs.getString("writeday"));
			
			list.add(bdto);
		}		
		// request영역에 ArrayList를 담는다
		request.setAttribute("list", list);		
	}
	
	public void write_ok(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		
		
	}
	
	public void content(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		id = Integer.parseInt(request.getParameter("id"));
		sql = "select * from board1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		
		rs = pstmt.executeQuery();
		
		rs.next();
		
		// 레코드 값을 dto에 저장
		// 레코드가 1개 이므로 AraayList X , Dto만 사용 
		// 하나의 레코드를 dto에 저장하기
		
		bdto = new BoardDto();
		bdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		bdto.setId(rs.getInt("id"));
		bdto.setName(rs.getString("name"));
		bdto.setReadnum(rs.getInt("readnum"));
		bdto.setTitle(rs.getString("title"));
		bdto.setWriteday(rs.getString("writeday"));
		
		request.setAttribute("bdto", bdto);
			
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
