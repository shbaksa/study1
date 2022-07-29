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
		
		// sql = "select reserve.*, bang from reserve,room where reserve.id=? reserve.userid=? && room.id=reserve.bang_id order by id desc limit 1";
		
		
		String chuga=""; // ↓ 예약하기에서 reserve_view로 들어올때  //  ↓ 예약하기에서 예약후 예약취소후 들어올때
    	if(request.getParameter("ck")==null || !request.getParameter("ck").equals("1"))
    		chuga=" limit 1";
   
    	// 쿼리 생성
    	String sql="select r2.*,r1.bang from room as r1,reserve as r2 where r2.userid=? ";
    	sql=sql+" and r1.id=r2.bang_id order by id desc "+chuga;
    	//	System.out.println(sql);
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, session.getAttribute("userid").toString());
		
		
		rs = pstmt.executeQuery();
		
		
		ArrayList<ReserveDto> rlist = new ArrayList<ReserveDto>();
		
		while(rs.next()) {
		
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
		rdto.setBang(rs.getString("bang"));
		rdto.setState(rs.getInt("state"));
		rlist.add(rdto);
		}
		// bang의 값을 전달하는 방법
		// 1. ReserveDto에 필드를 추가
		// 2. bang을 request영영에 추가
		
		// rdto.setBang(rs.getString("bang"));
		
		
		
		
		request.setAttribute("rlist", rlist);
		request.setAttribute("ck", request.getParameter("ck"));
		
	}
	
	public void allView(HttpServletRequest request, HttpSession session) throws Exception{
		
		sql = "select r2.*, bang from reserve as r2 , room as r1 where r2.userid=? && r1.id=r2.bang_id order by id desc";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());
		rs = pstmt.executeQuery();
		
		ArrayList<ReserveDto> rlist = new ArrayList<ReserveDto>();
		
		while(rs.next()) {
			
			ReserveDto rdto = new ReserveDto();
			rdto.setBang_id(rs.getInt("bang_id"));
			rdto.setBbq(rs.getInt("bbq"));
			rdto.setCharcoal(rs.getInt("charcoal"));
			rdto.setId(rs.getInt("id"));
			rdto.setInday(rs.getString("inday"));
			rdto.setInwon(rs.getInt("inwon"));
			rdto.setOutday(rs.getString("outday"));
			rdto.setTotal(rs.getInt("total"));
			rdto.setWriteday(rs.getString("writeday"));
			rdto.setBang(rs.getString("bang"));
			rlist.add(rdto);
		}
		
		
		
		request.setAttribute("rlist", rlist);
	}
	
	//방이 비었느냐?
	public void getEmpty(String dday, String bang_id, HttpServletRequest request) throws Exception {
		
		// 년월일과 bang의 id를 이용하여 예약 가능여부를 확인
		
		sql = "select count(*) as cnt from reserve where inday <= ? && ? < outday && bang_id=? ";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, dday);
		pstmt.setString(2, dday);
		pstmt.setString(3, bang_id);
		
		rs = pstmt.executeQuery();
		rs.next();
		
		
		request.setAttribute("cnt", rs.getString("cnt")); // 0 or 1
	}
	
	public void getCheck(String y, String m, String d, HttpServletRequest request) {

		int yy = Integer.parseInt(y);
		int mm = Integer.parseInt(m);
		int dd = Integer.parseInt(d);
		
		LocalDate today = LocalDate.now(); // 오늘날짜
		
		LocalDate dday = LocalDate.of(yy, mm, dd); // td날짜
		
		if(today.isBefore(dday))
			request.setAttribute("tt", "1");
		else if(today.isEqual(dday))
			request.setAttribute("tt", "1");
		else
			request.setAttribute("tt", 0);

	}
	
	// 몇박이 가능한지를 체크하기
	public void getSuk(HttpServletRequest request) throws Exception{
		
		// 년 월 일을 어디에 사용할까? 
		String ymd = request.getAttribute("ymd").toString();
		
		RoomDto rdto=(RoomDto)request.getAttribute("rdto");
		
		//System.out.println(ymd);
		//System.out.println(rdto.getId());
		
		// ymd를 LocalDate로 변경
		String[] temp = ymd.split("-");
		int y = Integer.parseInt(temp[0]);
		int m = Integer.parseInt(temp[1]);
		int d = Integer.parseInt(temp[2]);
		
		LocalDate dday = LocalDate.of(y, m, d); // 내가 입실할 날짜의 객체가 생성
									// 2022-07-28
		int chk=0;
		
		for(int i=1;i<=5;i++) {
			
			chk++;
			LocalDate xday = dday.plusDays(i); // 2022-07-29
			
			sql = "select * from reserve where inday<=? && ?<outday && bang_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, xday.toString());
			pstmt.setString(2, xday.toString());
			pstmt.setInt(3, rdto.getId());
			
			rs = pstmt.executeQuery();
			if(rs.next())
				break;			
			//System.out.println(pstmt.toString());
		
		}
		
	
		request.setAttribute("chk", chk);		
	}
	
	public void state_change(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String ck = request.getParameter("ck");
		id = request.getParameter("id");
		String state = request.getParameter("state");
		
		sql = "update reserve set state=? where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, state);
		pstmt.setString(2, id);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
		
		response.sendRedirect("../reserve/reserve_view.jsp?ck="+request.getParameter("ck"));
		
	}
	
}




















