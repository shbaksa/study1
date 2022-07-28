package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    public ReserveDao() throws Exception
    {
    	Class.forName("com.mysql.jdbc.Driver");
        String db="jdbc:mysql://localhost:3306/pension";
        conn=DriverManager.getConnection(db,"root","1234");
    }
    
    public void getCalendar(HttpServletRequest request)
    {
    	//  1일의 요일, 총일수, 몇주를 구해서 request영역에 저장
    	int y,m;
    	if(request.getParameter("y")==null)
    	{
    		LocalDate today=LocalDate.now(); // 현재 날짜 정보를 가져온다..
        	y=today.getYear(); // 년도
        	m=today.getMonthValue(); // 월
    	}
    	else
    	{
    		y=Integer.parseInt(request.getParameter("y"));
    		m=Integer.parseInt(request.getParameter("m"));
    	}
    	
    	
    	// 해당월의 1일에 대한 날짜객체를 생성
    	LocalDate dday=LocalDate.of(y, m, 1);
    	
    	// 1일의 요일
    	int yoil=dday.getDayOfWeek().getValue();  // 1~7까지  (7:일요일)
    	if(yoil==7)
    		yoil=0;
    	
    	// 해당월의 총일수
    	int chong=dday.lengthOfMonth();  // 총일수
    	
    	// 몇 주인가
    	int ju=(int)Math.ceil((yoil+chong)/7.0);
    	
    	request.setAttribute("yoil", yoil);
    	request.setAttribute("chong",chong);
    	request.setAttribute("ju",ju);
    	request.setAttribute("y", y);
    	request.setAttribute("m", m);
    }
    
    public void getRoom(HttpServletRequest request) throws Exception
    {
    	// 쿼리 작성
    	String sql="select * from room order by price asc";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	
    	ArrayList<RoomDto> rlist=new ArrayList<RoomDto>();
    	
    	// rs => dto => ArrayList
    	while(rs.next())
    	{
    		RoomDto rdto=new RoomDto();
    		rdto.setId(rs.getInt("id"));
    		rdto.setBang(rs.getString("bang"));
    		rdto.setPrice(rs.getInt("price"));
    		
    		rlist.add(rdto);
    	}
    	
    	request.setAttribute("rlist", rlist);
    }
    
    public void reserve_next(HttpServletRequest request) throws Exception
    {
    	// jsp에 보내줘야 될내용 => 년,월,일, 방의 정보
    	
    	int y=Integer.parseInt(request.getParameter("y"));
    	int m=Integer.parseInt(request.getParameter("m"));
    	int d=Integer.parseInt(request.getParameter("d"));
    	String id=request.getParameter("id");
    	// 입실일
    	String ymd=y+"-"+m+"-"+d;
    	
    	// 방의 정보
    	String sql="select * from room where id=?";
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	// dto에 담기
    	RoomDto rdto=new RoomDto();
    	rdto.setId(rs.getInt("id"));
    	rdto.setBang(rs.getString("bang"));
    	rdto.setMax(rs.getInt("max"));
    	rdto.setMin(rs.getInt("min"));
    	rdto.setPrice(rs.getInt("price"));
    	rdto.setContent(rs.getString("content"));
    	
    	// request영역에 필요한 값 담기
    	request.setAttribute("ymd", ymd);
    	request.setAttribute("rdto", rdto);
    }
    
    public void reserve_ok(HttpServletRequest request,HttpSession session,
    		HttpServletResponse response) throws Exception
    {
    	// request
    	String inday=request.getParameter("inday"); // 2022-07-05
    	int suk=Integer.parseInt(request.getParameter("suk"));
    	String bang_id=request.getParameter("bang_id");
    	String total=request.getParameter("total");
    	String inwon=request.getParameter("inwon");
    	String charcoal=request.getParameter("charcoal");
    	String bbq=request.getParameter("bbq");
    	String userid=session.getAttribute("userid").toString();
    	
    	// inday를 이용해서 outday을 구한다..
    	// LocalDate 변수=LocalDate.now()  // 현재시간
    	// LocalDate.of(int, int, int); // 입력되는 년,월,일
    	// inday를 정수로 변환시킨다..
    	String[] imsi=inday.split("-");
    	int y=Integer.parseInt(imsi[0]);
    	int m=Integer.parseInt(imsi[1]);
    	int d=Integer.parseInt(imsi[2]);
    	// 입실일 날짜 객체 만들기
    	LocalDate dday=LocalDate.of(y, m, d);
    	LocalDate outday=dday.plusDays(suk);
    	
    	// 쿼리 생성
    	String sql="insert into reserve(inday,outday,userid,bang_id,inwon,charcoal,bbq,total,writeday) ";
    	sql=sql+" values(?,?,?,?,?,?,?,?,now())";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, inday);
    	pstmt.setString(2, outday.toString());
    	pstmt.setString(3, userid);
    	pstmt.setString(4, bang_id);
    	pstmt.setString(5, inwon);
    	pstmt.setString(6, charcoal);
    	pstmt.setString(7, bbq);
    	pstmt.setString(8, total);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동 => 예약 현황
    	response.sendRedirect("reserve_view.jsp");
    }
    
    public void reserve_view(HttpSession session,HttpServletRequest request) throws Exception
    {
    	String chuga="";
    	if(request.getParameter("ck")==null) // 예약하기에서 reserve_view로 들어올때
    		chuga=" limit 1";
    	else if(!request.getParameter("ck").equals("1"))  // 예약하기에서 예약후 예약취소후 들어올때 
    		chuga=" limit 1";
   
    	// 쿼리 생성
    	String sql="select r2.*,r1.bang from room as r1,reserve as r2 where r2.userid=? ";
    	sql=sql+" and r1.id=r2.bang_id order by id desc "+chuga;
    	System.out.println(sql);
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, session.getAttribute("userid").toString());
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
         	
    	// ArrayList만들기
    	ArrayList<ReserveDto> rlist=new ArrayList<ReserveDto>();
    	
    	// rs => dto
    	while(rs.next())
    	{
    		ReserveDto rdto=new ReserveDto();
        	rdto.setId(rs.getInt("id"));
        	rdto.setInday(rs.getString("inday"));
        	rdto.setOutday(rs.getString("outday"));
        	rdto.setBang_id(rs.getInt("bang_id"));
        	rdto.setCharcoal(rs.getInt("charcoal"));
        	rdto.setBbq(rs.getInt("bbq"));
        	rdto.setTotal(rs.getInt("total"));
        	rdto.setWriteday(rs.getString("writeday"));
        	rdto.setBang(rs.getString("bang"));
        	rdto.setState(rs.getInt("state"));
        	rlist.add(rdto);
    	}
    	 
    
    	request.setAttribute("rlist", rlist);
        request.setAttribute("ck", request.getParameter("ck"));
    }
    
    // 방이 비었느냐?
    public void getEmpty(String dday, String bang_id, HttpServletRequest request) throws Exception
    {
    	// 년월일과 bang의 id를 이용하여 예약 가능여부를 확인
    	String sql="select count(*) as cnt from reserve ";
    	sql=sql+" where inday<=? and ?<outday and bang_id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, dday);
    	pstmt.setString(2, dday);
    	pstmt.setString(3, bang_id);
    	
    	// 쿼리 실행
    	ResultSet rs=pstmt.executeQuery();
    	rs.next();
    	
    	request.setAttribute("cnt", rs.getString("cnt"));  // 0 or 1
    }
    
    public void getcheck(String y, String m, String d, HttpServletRequest request)
    {
    	int yy=Integer.parseInt(y);
    	int mm=Integer.parseInt(m);
    	int dd=Integer.parseInt(d);
    	
    	LocalDate today=LocalDate.now(); //오늘날짜
    	LocalDate dday=LocalDate.of(yy, mm, dd);
    	
    	if(today.isBefore(dday)) // 
    	{
    		request.setAttribute("tt", "1");
    	}
    	else if(today.isEqual(dday)) // 같은날
    	     {
    	 	    request.setAttribute("tt", "1");
    	     }
    	     else
    	     {
    	      	request.setAttribute("tt", "0");
    	     }
    }
    
    // 몇박이 가능한지를 체크하기
    public void getSuk(HttpServletRequest request) throws Exception
    {
    	// request
    	String ymd=request.getAttribute("ymd").toString();
    	RoomDto rdto=(RoomDto)request.getAttribute("rdto");
    	//System.out.println(ymd);
    	//System.out.println(rdto.getId());
    	
    	// ymd를 LocalDate로 변경
    	String[] imsi=ymd.split("-");
    	int y=Integer.parseInt(imsi[0]);
    	int m=Integer.parseInt(imsi[1]);
    	int d=Integer.parseInt(imsi[2]);   // 2022-07-28
    	LocalDate dday=LocalDate.of(y, m, d); // 내가 입실할 날짜의 객체가 생성
    	int chk=0;
    	for(int i=1;i<=5;i++)
    	{	
    	   chk++;
    	   
    	   LocalDate xday=dday.plusDays(i);	// 2022-07-29
    	   String sql="select * from reserve where inday<=? and ?<outday and bang_id=?";
    	   
    	   pstmt=conn.prepareStatement(sql);
    	   pstmt.setString(1, xday.toString());
    	   pstmt.setString(2, xday.toString());
    	   pstmt.setInt(3, rdto.getId());
    	   
    	   ResultSet rs=pstmt.executeQuery();
    	   
    	   if(rs.next())
    		   break;
    	}
    	
    	request.setAttribute("chk", chk);
    	
    }
    
    public void getprev( HttpServletRequest request)
    {
    	LocalDate today=LocalDate.now(); //오늘날짜
    	int y,m;
    	if(request.getParameter("y")==null) // reserve.jsp를 제일 처음 부를때는 null값임
    		y=today.getYear();
    	else
    	    y=Integer.parseInt(request.getParameter("y"));
    	
    	if(request.getParameter("m")==null)
    		m=today.getMonthValue();
    	else
    	    m=Integer.parseInt(request.getParameter("m"));
    	
    	LocalDate xday=LocalDate.of(today.getYear(), today.getMonthValue(), 1); // 오늘기준 1일의날짜
    	LocalDate dday=LocalDate.of(y, m, 1); // 현재 달력기준 1일의 날짜
    	
    	if(xday.isBefore(dday))  // 오늘기준 보다 달력의 기준이 이전일 경우(같을경우도 포함)
    	{
    		request.setAttribute("prev", "1");
    	}
    	else 
    	{
    	      	request.setAttribute("prev", "0");
    	}
    }
    
    
    public void state_change(HttpServletRequest request,HttpServletResponse response) throws Exception
    {
    	String id=request.getParameter("id");
    	String state=request.getParameter("state");
    	
    	// 쿼리 생성
    	String sql="update reserve set state=? where id=?";
    	
    	// 심부름꾼 생성
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, state);
    	pstmt.setString(2, id);
    	
    	// 쿼리 실행
    	pstmt.executeUpdate();
    	
    	// close
    	pstmt.close();
    	conn.close();
    	
    	// 이동
    	response.sendRedirect("reserve_view.jsp?ck="+request.getParameter("ck"));
    }
}




















