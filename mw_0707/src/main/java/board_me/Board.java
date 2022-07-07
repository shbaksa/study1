package board_me;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;
public class Board {
	
	Connection conn;
	ResultSet rs;
	PreparedStatement pstmt;
	String name,title,id;
	String sql="";
	
	public Board() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public ResultSet list(HttpServletRequest request) throws Exception{
		
		int page;
		if(request.getParameter("page")==null)
			page=1;
		else
			page=Integer.parseInt(request.getParameter("page"));
		
		int index = (page-1)*10;
		sql = "select * from board1 order by id desc limit ?,10";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1,index);
		rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public int[] getpage(HttpServletRequest request) throws Exception{
		int page;
		if(request.getParameter("page")==null)
			page=1;
		else
			page=Integer.parseInt(request.getParameter("page"));
		
		int imsi = page/10;
		if(page%10 ==0)
			imsi--;
		int pstart = imsi*10+1;

		int pend = pstart+9;
		
		sql = "select ceil(count(*)/10) as chong from board1";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		int chong = rs.getInt("chong");
		if(pend>chong)
			pend=chong;
		
		return new int[] {page,pstart,pend,chong};
	}

}
