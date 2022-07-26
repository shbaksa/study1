package dao;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dto.RoomDto;
import dto.TourDto;
// 예약관련
public class ReserveDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql = "";
	int y,m,d;
	String id,content,bang,ymd;

	public ReserveDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "1234");
	}

	public void getCalendar(HttpServletRequest request) {
		int y,m;
		
		// 1일의 요일, 총일수, 몆주를 구해서 request영역에 저장
		if(request.getParameter("y")==null) {
			LocalDate today = LocalDate.now(); // 현재 날짜 정보를 가져온다			
			y = today.getYear(); // 년도
			m = today.getMonthValue(); // 월
		}
		else {
			y = Integer.parseInt(request.getParameter("y"));
			m = Integer.parseInt(request.getParameter("m"));
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
	

	
}




















