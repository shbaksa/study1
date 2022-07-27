package dao;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.ReserveDto;
import dto.RoomDto;
import dto.TourDto;
// 예약관련
public class ReserveDao2 {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	int y,m,d;
	String id,content,bang,ymd;

	public ReserveDao2() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}

	public void getCalendar(HttpServletRequest request) {
		int y,m,tday,yy,mm;
		
		// 1일의 요일, 총일수, 몆주를 구해서 request영역에 저장
		// 1일의 요일, 총일수, 몆주를 구해서 request영역에 저장
		if(request.getParameter("y")==null) {
			LocalDate today = LocalDate.now(); // 현재 날짜 정보를 가져온다			
			y = today.getYear(); // 년도
			m = today.getMonthValue(); // 월
			tday = today.getDayOfMonth();
			
		}
		else {
			LocalDate today = LocalDate.now();
			y = Integer.parseInt(request.getParameter("y"));
			m = Integer.parseInt(request.getParameter("m"));
			tday = today.getDayOfMonth();
			
		}
	
		
		
		// 해당월의 1일에 대한 날짜객체를 생성
		
		LocalDate dday = LocalDate.of(y, m, 1); // 각월 1일
		
		// 1일의 요일
		
		int yoil = dday.getDayOfWeek().getValue(); // 각월 1일의 날짜를 숫자로 1~7까지 (7:일요일)
		if(yoil==7)
			yoil=0; // 일요일을 0으로
		
		// 해당월의 총일수
		
		int chong = dday.lengthOfMonth(); // 각월 총일수
		
		// 몇주인가
		int ju = (int)Math.ceil((yoil+chong)/7.0); 
		
		request.setAttribute("yoil", yoil);
		request.setAttribute("chong", chong);
		request.setAttribute("ju", ju);
		request.setAttribute("y", y);
		request.setAttribute("m", m);
		request.setAttribute("tday", tday);
		
		
	}
	
	public void getRoom(HttpServletRequest request) throws Exception {
		
		sql = "select * from room order by price asc";
		
		pstmt = conn.prepareStatement(sql);
		
		rs = pstmt.executeQuery();
		
		ArrayList<RoomDto> rlist = new ArrayList<RoomDto>();
				
		while(rs.next()) {
			
			RoomDto rdto = new RoomDto();
			rdto.setBang(rs.getString("bang"));			
			rdto.setId(rs.getInt("id"));		
			rdto.setPrice(rs.getInt("price"));
			//rdto.setContent(rs.getString("content"));
			//rdto.setState(rs.getInt("state"));
			//rdto.setMax(rs.getInt("max"));
			//rdto.setMin(rs.getInt("min"));
			
			rlist.add(rdto);
		}
		
		request.setAttribute("rlist", rlist);
	}
	
	public void reserve_next(HttpServletRequest request) throws Exception{
		
		// jsp에 보내줘야 될내용 => 년,월,일, 방의 정보
		request.setCharacterEncoding("utf-8");
		y = Integer.parseInt(request.getParameter("y"));
		m = Integer.parseInt(request.getParameter("m"));
		d = Integer.parseInt(request.getParameter("d"));
		id = request.getParameter("id");
		
		// 입실일
		ymd = y+"-"+m+"-"+d;
		
		// 방의 정보
		
		sql = "select * from room where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		// dto에 담기
		RoomDto rdto = new RoomDto();
		rdto.setBang(rs.getString("bang"));
		rdto.setId(rs.getInt("id"));
		rdto.setMax(rs.getInt("max"));
		rdto.setMin(rs.getInt("min"));
		rdto.setPrice(rs.getInt("price"));
		rdto.setContent(rs.getString("content"));

		request.setAttribute("ymd", ymd);
		request.setAttribute("rdto", rdto);
		
	}
	
	public void reserve_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		
		// request
		
		String inday = request.getParameter("ymd"); // 2022-07-05
		int suk = Integer.parseInt(request.getParameter("suk"));
		String bang_id = request.getParameter("bang_id");
		String total = request.getParameter("total");
		String inwon = request.getParameter("inwon");
		String charcoal = request.getParameter("charcoal");
		String bbq = request.getParameter("bbq");
		String userid = session.getAttribute("userid").toString();
		
		
		// inday를 이용해서 outday을 구한다
		//LocalDate 변수 = LocalDate.now() // 현재시간
		//				 LocalDate.of(y, m, d) // 입력되는 년, 월, 일
		
		String[] imsi = inday.split("-");
		int y = Integer.parseInt(imsi[0]);
		int m = Integer.parseInt(imsi[1]);
		int d = Integer.parseInt(imsi[2]);
		
		// 입실일 날짜 객체 만들기
		
		LocalDate dday = LocalDate.of(y, m, d);
		LocalDate outday = dday.plusDays(suk);
		
		sql = "insert into reserve(inday,outday,userid,bang_id,inwon,charcoal,bbq,total,writeday) ";
		sql = sql + " values(?,?,?,?,?,?,?,?,now())";
		
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
		
		// 이동 => 예약 현황
		response.sendRedirect("../reserve/reserve_view.jsp");
		
	}
	
	public void reserve_view(HttpServletRequest request, HttpSession session) throws Exception{
		
		// sql = "select reserve.*, bang from reserve,room where reserve.userid=? && room.id=reserve.bang_id order by id desc limit 1";
		
		sql = "select r2.*, bang from reserve as r2, room as r1 where r2.userid=? && r1.id=r2.bang_id order by id desc limit 1";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());
		rs = pstmt.executeQuery();
		rs.next();
		
		ReserveDto rdto = new ReserveDto();
		rdto.setBang_id(rs.getInt("bang_id"));
		rdto.setBbq(rs.getInt("bbq"));
		rdto.setCharcoal(rs.getInt("charcoal"));
		rdto.setId(rs.getInt("id"));
		rdto.setInday(rs.getString("inday"));
		rdto.setInwon(rs.getInt("inwon"));
		rdto.setOutday(rs.getString("outday"));
		rdto.setTotal(rs.getInt("total"));
		//rdto.setUserid(rs.getString("userid"));
		rdto.setWriteday(rs.getString("writeday"));
		
		
		// bang의 값을 전달하는 방법
		// 1. ReserveDto에 필드를 추가
		// 2. bang을 request영영에 추가
		
		// rdto.setBang(rs.getString("bang"));
		
		request.setAttribute("bang", rs.getString("bang"));		
		request.setAttribute("rdto", rdto);
		
	}
	
	
}




















