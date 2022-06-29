<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>    
<%
     // vote_view.jsp => 결과를 가져와서 알려준다..
     // 전체투표자수, 각각의 투표자수
     // DB연결
     Class.forName("com.mysql.jdbc.Driver");
     String db="jdbc:mysql://localhost:3306/first";
     Connection conn=DriverManager.getConnection(db,"root","1234");
     
     // 쿼리 생성
     String sql="select * , p1+p2+p3+p4+p5 as tot from vote where id=1";
     
     // 심부름꾼 생성
     PreparedStatement pstmt=conn.prepareStatement(sql);
     
     // 쿼리 실행
     ResultSet rs=pstmt.executeQuery();
     rs.next();
     int p1=rs.getInt("p1");
     int p2=rs.getInt("p2");
     int p3=rs.getInt("p3");
     int p4=rs.getInt("p4");
     int p5=rs.getInt("p5");
     double tot=rs.getDouble("tot");
     
     int chong=800;  // 조절이 필요
     
     int per1=(int)(chong*(p1/tot));  // p1의 %을 계산한 후 가로크기 px
     int per2=(int)(chong*(p2/tot));
     int per3=(int)(chong*(p3/tot));
     int per4=(int)(chong*(p4/tot));
     int per5=(int)(chong*(p5/tot));
     
     //out.print(per1+" "+per2+" "+per3+" "+per4+" "+per5);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
     .food {
       display:inline-block;
       width:0px;
       height:20px;
       border:1px solid red;
       visibility:hidden;
     }
  </style>
  <script>
    function init()
    {
    	var chk=[<%=per1%>,<%=per2%>,<%=per3%>,<%=per4%>,<%=per5%>]; // 각 항목당 그래프의 길이
        var i=0; // class="food"클래스에 접근하기 위해 0부터 값을 부여 
                 // 아래에 food가 총 5개가 존재
    	tt=setInterval(function()  // 5개의 항목을 5번 실행 시킨다.
    	{
    		num=0;  // 각 항목의 그래프 크기는 최초 0
    		document.getElementsByClassName("food")[i].style.visibility="visible";
      		ss=setInterval(function()
      		{
      			
      			num++; // 그래프의 크기를 1씩 증가
      			//console.log(i+" "+num);
      			document.getElementsByClassName("food")[i].style.width=num+"px"; // 그래프의 크기 전달
      			
      			if(num==chk[i]) // 증가되는 num의 값이 현재 그래프의 값까지 도달했다면(위의 배열 참조)
      			{
      				clearInterval(ss); // 한 항목의 그래픽 그린 동작 객체를 종료
      				i++;
      			}
      			
      		},1)
    		
      		if(i>=4) // 5번째 항목을 그래프그린후 오는 경우 i의 값은 4를 가지고 있음
      			clearInterval(tt);  // 5개 항목 그래프 그린 후 종료
    	},2000);
    	

    }
  </script>
</head>
<body onload="init()">
   <table width="560" align="center" border="0">
     <tr>
       <td width="100"> 순대국밥 </td>
       <td> <span class="food"></span> <%=p1%>명 </td>
     </tr>
     <tr>
       <td> 부대찌개 </td>
       <td> <span class="food"></span> <%=p2%>명 </td>
     </tr>
     <tr>
       <td> 짜장면 </td>
       <td> <span class="food"></span> <%=p3%>명 </td>
     </tr>
     <tr>
       <td> 초 밥 </td>
       <td> <span class="food"></span> <%=p4%>명 </td>
     </tr>
     <tr>
       <td> 김 밥 </td>
       <td> <span class="food"></span> <%=p5%>명 </td>
     </tr>
   </table>
   <hr>
   
</body>
</html>



