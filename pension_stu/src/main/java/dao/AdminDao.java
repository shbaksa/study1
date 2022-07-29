package dao;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;

import dto.AdminDto;
import dto.MemberDto;
import dto.ReserveDto;
import dto.RoomDto;

// 관리자
public class AdminDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	
	public AdminDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public void room_view(HttpServletRequest request) throws Exception{ // room 테이블의 내용을 읽어와서 출력
		
		sql = "select * from room order by price asc";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		ArrayList<RoomDto> rlist = new ArrayList<RoomDto>();
		
		while(rs.next()) {
			RoomDto rdto = new RoomDto();
			rdto.setBang(rs.getString("bang"));
			//rdto.setContent(rs.getString("content"));
			rdto.setId(rs.getInt("id"));
			rdto.setMax(rs.getInt("max"));
			rdto.setMin(rs.getInt("min"));
			rdto.setPrice(rs.getInt("price"));
			rdto.setState(rs.getInt("state"));
			
			rlist.add(rdto);		
		}
		
		request.setAttribute("rlist", rlist);
		
	}
	
	public String content_view(HttpServletRequest request, JspWriter out) throws Exception{
		
		String id = request.getParameter("id");
		
		sql = "select content from room where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		//out.print(rs.getString("content").replace("\r\n", "<br>"));
		return rs.getString("content");
	}
	
	public void reserve_check(HttpServletRequest request) throws Exception{
		
		sql = "select r2.*,r1.bang from reserve as r2 , room as r1 where r2.bang_id=r1.id order by r2.id desc";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		ArrayList<ReserveDto> rlist = new ArrayList<ReserveDto>();
		
		while(rs.next()) {
			
			
			String[] imsi = rs.getString("outday").split("-");
			int y = Integer.parseInt(imsi[0]);
			int m = Integer.parseInt(imsi[1]);
			int d = Integer.parseInt(imsi[2]);
			
			LocalDate today = LocalDate.now();
			LocalDate dday = LocalDate.of(y, m, d);
			
			ReserveDto rdto = new ReserveDto();
			rdto.setId(rs.getInt("id"));
			rdto.setUserid(rs.getString("userid"));
			rdto.setTotal(rs.getInt("total"));
			rdto.setInday(rs.getString("inday"));
			rdto.setOutday(rs.getString("outday"));
			rdto.setInwon(rs.getInt("inwon"));
			rdto.setCharcoal(rs.getInt("charcoal"));
			rdto.setBbq(rs.getInt("bbq"));
			rdto.setWriteday(rs.getString("writeday"));
			rdto.setBang(rs.getString("bang"));
						
			if(today.isBefore(dday))
				rdto.setState(rs.getInt("state"));
			else
				rdto.setState(3);

			rlist.add(rdto);
		}
		
		request.setAttribute("rlist", rlist);
	}
	
	public void reserve_cancel(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		String id = request.getParameter("id");
		
		sql = "update reserve set state=2 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../admin/reserve_check.jsp");
	}
	
	public void member_check(HttpServletRequest request) throws Exception{
		
		sql = "select * from member order by name asc";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		ArrayList<MemberDto> mlist = new ArrayList<MemberDto>();
		
		while(rs.next()) {
			
			MemberDto mdto = new MemberDto();
			mdto.setId(rs.getInt("id"));
			mdto.setName(rs.getString("name"));
			mdto.setPhone(rs.getString("phone"));
			mdto.setState(rs.getInt("state"));
			mdto.setUserid(rs.getString("userid"));
			mdto.setWriteday(rs.getString("writeday"));
			
			mlist.add(mdto);			
		}
		
		request.setAttribute("mlist", mlist);
	}
	
	public void member_state(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		String id = request.getParameter("id");
		
		sql = "update member set state=2 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../admin/member_check.jsp");
	}
}










































