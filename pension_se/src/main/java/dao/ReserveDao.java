package dao;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.ReserveDto;
import dto.RoomDto;


public class ReserveDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	int y,m,d,yoil,chong,ju;
	String id,content,bang,ymd;

	public ReserveDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}
	
	public void getCalendar(HttpServletRequest request) throws Exception{
		
		if(request.getParameter("y")==null) {
			LocalDate today = LocalDate.now();
			y = today.getYear();
			m = today.getMonthValue();
		}
		else {
			y = Integer.parseInt(request.getParameter("y"));
			m = Integer.parseInt(request.getParameter("m"));
		}
		
		LocalDate dday = LocalDate.of(y, m, 1);
		
		yoil = dday.getDayOfWeek().getValue();
		if(yoil==7)
			yoil=0;
		
		chong = dday.lengthOfMonth();
		
		ju = (int)Math.ceil((yoil+chong)/7.0);
		
		request.setAttribute("yoil", yoil);
		request.setAttribute("chong", chong);
		request.setAttribute("ju", ju);
		request.setAttribute("y", y);
		request.setAttribute("m", m);
	}
	
	public void getCheck(HttpServletRequest request, String y, String m, String d) throws Exception{
		
		this.y = Integer.parseInt(y);
		this.m = Integer.parseInt(m);
		this.d = Integer.parseInt(d);
		
		LocalDate today = LocalDate.now();
		
		LocalDate dday =  LocalDate.of(this.y, this.m, this.d);
		
		if(today.isBefore(dday))
			request.setAttribute("tt", 1);
		else if(today.isEqual(dday))
			request.setAttribute("tt", 1);
		else
			request.setAttribute("tt", 0);
		
	}
	
	public void getRoom(HttpServletRequest request) throws Exception{
		
		sql = "select * from room order by price desc";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		ArrayList<RoomDto> rlist = new ArrayList<RoomDto>();
		while(rs.next()) {
			RoomDto rdto = new RoomDto();
			rdto.setPrice(rs.getInt("price"));
			rdto.setBang(rs.getString("bang"));
			rdto.setId(rs.getInt("id"));
			rlist.add(rdto);
		}
		request.setAttribute("rlist", rlist);
	}
	
	public void getEmpty(HttpServletRequest request, String y , String m, String d , String bang_id) throws Exception{
		
		String dday = y+"-"+m+"-"+d;
		
		sql = "select count(*) as cnt from reserve where inday <='"+dday+"' && '"+dday+"' < outday && bang_id='"+bang_id+"'";
		
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		rs.next();
		request.setAttribute("cnt", rs.getString("cnt"));
		
	}
	
	public void reserve_next(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		y = Integer.parseInt(request.getParameter("y"));
		m = Integer.parseInt(request.getParameter("m"));
		d = Integer.parseInt(request.getParameter("d"));
		id = request.getParameter("id");
		
		String ymd = y+"-"+m+"-"+d;
		
		sql = "select * from room where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		rs.next();
		
		RoomDto rdto = new RoomDto();
		rdto.setBang(rs.getString("bang"));
		rdto.setId(rs.getInt("id"));
		rdto.setMax(rs.getInt("max"));
		rdto.setMin(rs.getInt("min"));
		rdto.setPrice(rs.getInt("price"));
		
		request.setAttribute("rdto", rdto);
		request.setAttribute("ymd", ymd);
	
	}
	
	public void getSuk(HttpServletRequest request) throws Exception{
		
		y = Integer.parseInt(request.getParameter("y"));
		m = Integer.parseInt(request.getParameter("m"));
		d = Integer.parseInt(request.getParameter("d"));
		
		RoomDto rdto = (RoomDto)request.getAttribute("rdto");
		
		LocalDate dday = LocalDate.of(y, m, d);
		
		int chk=0;
		
		for(int i=1;i<=5;i++) {
			chk++;
			LocalDate xday = dday.plusDays(i);
			
			sql = "select * from reserve where inday<=? && ?<outday && bang_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dday.toString());
			pstmt.setString(2, dday.toString());
			pstmt.setInt(3, rdto.getId());
			rs = pstmt.executeQuery();
			
			if(rs.next())
				break;
		}
		
		request.setAttribute("chk", chk);
			
	}
	
	public void reserve_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		
		String inday = request.getParameter("ymd");
		id = request.getParameter("id");
		String total = request.getParameter("total");
		String bang_id = request.getParameter("bang_id");
		String inwon = request.getParameter("inwon");
		String charcoal = request.getParameter("charcoal");
		String bbq = request.getParameter("bbq");
		int suk = Integer.parseInt(request.getParameter("suk"));
		String userid = session.getAttribute("userid").toString();
		
		String[] imsi = inday.split("-");
		y = Integer.parseInt(imsi[0]);
		m = Integer.parseInt(imsi[1]);
		d = Integer.parseInt(imsi[2]);
		
		LocalDate dday = LocalDate.of(y, m, d);
		LocalDate outday = dday.plusDays(suk);
		
		sql = "insert into reserve(inday,outday,userid,bang_id,inwon,charcoal,bbq,total,writeday) ";
		sql = sql+" values(?,?,?,?,?,?,?,?,now())";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, inday);
		pstmt.setString(2, outday.toString());
		pstmt.setString(3, userid);
		pstmt.setString(4, bang_id);
		pstmt.setString(5, inwon);
		pstmt.setString(6, charcoal);
		pstmt.setString(7, bbq);
		pstmt.setString(8, total);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		response.sendRedirect("../reserve/reserve_view.jsp");
	}
	
	public void reserve_view(HttpServletRequest request, HttpSession session) throws Exception{
		
		String chuga="";
		
		if(request.getParameter("ck")==null || !request.getParameter("ck").equals("1"))
			chuga=" limit 1";
		
		sql = "select  r2.*, r1.bang from room as r1 , reserve as r2 where r2.userid=? && r1.id=r2.bang_id order by id desc"+chuga;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());
		rs = pstmt.executeQuery();
		
		ArrayList<ReserveDto> rlist = new ArrayList<ReserveDto>();
		while(rs.next()) {
			ReserveDto rdto = new ReserveDto();
			rdto.setBang(rs.getString("bang"));
			rdto.setBang_id(rs.getInt("bang_id"));
			rdto.setBbq(rs.getInt("bbq"));
			rdto.setCharcoal(rs.getInt("charcoal"));
			rdto.setId(rs.getInt("id"));
			rdto.setInday(rs.getString("inday"));
			rdto.setInwon(rs.getInt("inwon"));
			rdto.setOutday(rs.getString("outday"));
			rdto.setState(rs.getInt("state"));
			rdto.setTotal(rs.getInt("total"));
			rdto.setWriteday(rs.getString("writeday"));
			
			rlist.add(rdto);
		}
		
			
		request.setAttribute("rlist", rlist);
		request.setAttribute("ck", request.getParameter("ck"));
	
			
	}
}



















