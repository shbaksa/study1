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
       height:20px;
       border:1px solid red;
     }
  </style>
</head>
<body>
   <table width="560" align="center" border="0">
     <tr>
       <td width="100"> 순대국밥 </td>
       <td> <span class="food" style="width:<%=per1%>px;"></span> </td>
       <td width="40"> <%=p1%>명 </td>
     </tr>
     <tr>
       <td> 부대찌개 </td>
       <td> <span class="food" style="width:<%=per2%>px;"></span> </td>
       <td> <%=p2%>명 </td>
     </tr>
     <tr>
       <td> 짜장면 </td>
       <td> <span class="food" style="width:<%=per3%>px;"></span> </td>
       <td> <%=p3%>명 </td>
     </tr>
     <tr>
       <td> 초 밥 </td>
       <td> <span class="food" style="width:<%=per4%>px;"></span> </td>
       <td> <%=p4%>명 </td>
     </tr>
     <tr>
       <td> 김 밥 </td>
       <td> <span class="food" style="width:<%=per5%>px;"></span> </td>
       <td> <%=p5%>명 </td>
     </tr>
   </table>
</body>
</html>



