<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body >	<!-- cal_java.jsp -->
<%@ page import="java.time.LocalDate" %>
	<%
	
	
	LocalDate today = LocalDate.now();
	int year; //= today.getYear();
	int month;
	int day;
	
	// request가 있을경우, 없는경우
	
	if(request.getParameter("month")==null && request.getParameter("year")==null ){
		month=today.getMonthValue();
		year=today.getYear();	
	}
	/* else if(Integer.parseInt(request.getParameter("month"))==0){
		month=12;
		year=Integer.parseInt(request.getParameter("year"))-1;
	}
	else if(Integer.parseInt(request.getParameter("month"))==13){
		month=1;
		year=Integer.parseInt(request.getParameter("year"))+1;
	} */
	/* else if (Integer.parseInt(request.getParameter("month")) != 0 && Integer.parseInt(request.getParameter("month"))!=13  ){
		month=Integer.parseInt(request.getParameter("month"));		
		year=Integer.parseInt(request.getParameter("year"));
	} */
	else {
		month=Integer.parseInt(request.getParameter("month"));	
		year=Integer.parseInt(request.getParameter("year"));
	}
		// 달력을 만들때 필요한 값
		// 1. 만들고자 하는 달의 1일의 요일
		// 2. 만들고자 하는 달의 총 일수
		// 3. 몇 주인가?
				
		// 이번달의 달력

		 today = LocalDate.now();
		
		// out.print(today.getMonthValue());
		
		// 1일의 요일을 구하기 위해서 날짜객체를 다시 생성
		LocalDate xday = LocalDate.of(year, month,1);
		
		// 1일의 요일
		int yoil = xday.getDayOfWeek().getValue();
		
		if(yoil==7)
			yoil=0;
			
		// 총 일수
		int chong = xday.lengthOfMonth();
		
		// 몇 주인가?
		int ju = (int)Math.ceil((yoil+chong)/7.0); // Math.ceil(); 올림
		
		//out.print(ju);
		
	%>
		<form action="cal_java_me.jsp">
		<input type="text" name="year">년
		<input type="text" name="month">월
		<input type="text" name="day">일 
		<input type="submit" value="이동">
		</form>
	
	
		<!-- 토요일은 파랗게, 일요일은 빨갛게 -->
	 	<table width="500" height="400" align="center" border="1">
	 	<caption><h1>
	 	<%if(month==1) {%>
	 	<input type="button" onclick="location='cal_java_T.jsp?month=12&year=<%=year-1%>'" value="←">
	 	<%}else{ %>
	 	<input type="button" onclick="location='cal_java_T.jsp?month=<%=month-1%>&year=<%=year%>'" value="←">
	 	<%} %>
	 	&nbsp;&nbsp;<%=year%>년<%=month %>월달력&nbsp;&nbsp;
	 	<% if(month==12) {%>
	 	<button onclick="location='cal_java_T.jsp?month=1&year=<%=year+1%>'"> → </button>
	 	<%}else{ %>
	 	<button onclick="location='cal_java_T.jsp?month=<%=month+1%>&year=<%=year%>'"> → </button>
	 	<%} %>
	 	</h1></caption>
	 	<tr height="30">
	 	<td>일</td>
	 	<td>월</td>
	 	<td>화</td>
	 	<td>수</td>
	 	<td>목</td>
	 	<td>금</td>
	 	<td>토</td>
	 	</tr>
		<% 
		day=1;
		for(int i=1;i<=ju;i++){ %>
		<tr>
		<% for(int j=0;j<7;j++){ 
		
			String str="";
        	if(j==6)
        	{
        		str="style='color:blue;'";
        	}
        	else if(j==0){
        		str="style='color:red;'";
        	}
        	else
        	{
        		str="";
        	} 
        	
        	String css="";
        	switch(j){
        	case 3 : css="style='color:green;'"; break;
        	case 5 : css="style='color:purple;'";	break;
        	default : css="";
        	}
        	/* String cs="";
        	if(month==5&&day==5 || month==10&&day==3 )
        		cs="style='color:red;'"; */
        	String c="";
        	if( request.getParameter("day")!=null){
        		if(Integer.parseInt(request.getParameter("day")) == day)
        		c="style='background:yellow;'";
        	}
        		
		
		
		%>
		
		
		<% if( ((j<yoil) && i==1) || (day>chong) ){ %>
		
		<td> &nbsp; </td>
		
		<% }
		else {%>
		<td <%=c %> > <span <%=str %> <%=css %> ><%=day %> </span></td>
		<%	
			day++;
			}
		}%>
		
		</tr>
		<% }%> 
			
			
		
		</table>
</body>


</html>