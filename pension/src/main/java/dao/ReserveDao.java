package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

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
}







