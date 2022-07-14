package boardpage;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class BoardDao {
	
	Connection conn;
	ResultSet rs ;
	PreparedStatement pstmt;
	String sql = "";
	int page,index,pstart,pend,chong,id,readnum;
	String name,content,pwd,writeday,title;
	
	public BoardDao() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public void list(HttpServletRequest request) throws Exception{
		
		if(request.getParameter("page")==null)
			page=1;
		else
			page = Integer.parseInt(request.getParameter("page"));
		
		index = (page-1)*10;
		
		sql = "select * from board1 order by id desc limit ?,10";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, index);
		
		rs = pstmt.executeQuery();
		
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		
		while(rs.next()) {
			
			BoardDto bdto = new BoardDto();
			bdto.setTitle(rs.getString("title"));
			bdto.setContent(rs.getString("content").replace("\r\n", "<br>"));
			bdto.setName(rs.getString("name"));
			bdto.setReadnum(rs.getInt("readnum"));
			bdto.setId(rs.getInt("id"));
			bdto.setWriteday(rs.getString("writeday"));
			
			list.add(bdto);
		}
		
		request.setAttribute("list",list);		
	}
	
	public void getpage(HttpServletRequest request) throws Exception{
		
		if(request.getParameter("page")==null)
			page=1;
		else
			page = Integer.parseInt(request.getParameter("page"));
		
		int imsi = page/10;
		
		if(page%10 == 0)
			imsi--;
		
		pstart = imsi*10+1;
		pend = pstart+9;
		
		sql = "select ceil(count(*)/10) as chong from board1";
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		chong = rs.getInt("chong");
		if(pend>chong)
			pend=chong;
		
		BoardDto bdto = new BoardDto();
		
		bdto.setChong(chong);
		bdto.setPage(page);
		bdto.setPend(pend);
		bdto.setPstart(pstart);
		
		request.setAttribute("pager", bdto);

	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
