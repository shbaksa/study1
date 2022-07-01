<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- cal_java.jsp -->
 <%@page import="java.time.LocalDate" %>
 <%
     // 달력을 만들때 필요한 값
     // 1. 만들고자 하는 달의 1일의 요일
     // 2. 만들고자 하는 달의 총 일수
     // 3. 몇 주인가?
     // 이번달의 달력    	
     LocalDate today=LocalDate.now();
     int year=today.getYear();
     int month=today.getMonthValue();
     //out.print(today.getMonthValue());
     
     // 1일의 요일을 구하기 위해서 날짜객체를 다시 생성
     LocalDate xday=LocalDate.of(year, month,1);
     
     // 1일이 요일
     int yoil=xday.getDayOfWeek().getValue();
     if(yoil==7)
    	 yoil=0;
     
     // 총일수
     int chong=xday.lengthOfMonth();
     
     // 몇주인가?
     int ju=(int)Math.ceil((yoil+chong)/7.0);  // Math.ceil();
         
 %> 
   <!-- 토요일은 파랗게, 일요일은 빨갛게 -->
   <table width="500" height="400" align="center" border="1">
     <tr height="30">
       <td> 일 </td>
       <td> 월 </td>
       <td> 화 </td>
       <td> 수 </td>
       <td> 목 </td>
       <td> 금 </td>
       <td> 토 </td>
     </tr>
   <%
    int day=1;
    for(int i=1;i<=ju;i++)
    {
   %>  
     <tr>
      <%
     for(int j=0;j<7;j++)
     {

        if( ((j<yoil) && i==1) || (day > chong) )
        {
      %>
       <td> &nbsp; </td>
      <%
        }
        else
        {
        	// 요일에 따른 스타일을 문자열에 저장
        	String css;
        	switch(j)
        	{
        	    case 0: css="style='color:red'"; break;
        	    case 6: css="style='color:blue'"; break;
        	    default: css="";
        	}
      %>
       <td <%=css%>> <%=day%> </td>
      <%
          day++;
        }
        
     }
      %>
     </tr>
   <%
    }
   %>  
   </table>
</body>
</html>





