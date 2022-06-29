<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
     // vote_view.jsp => 결과를 가져와서 알려준다..
     // 전체투표자수, 각각의 투표자수
     Class.forName("com.mysql.jdbc.Driver");
     String db = "jdbc:mysql://localhost:3306/first";
     Connection conn = DriverManager.getConnection(db,"root","0000");
     
     request.setCharacterEncoding("utf-8");
     
     
     String sql = "select * , p1+p2+p3+p4+p5 as tot from vote where id=1";
     PreparedStatement pstmt = conn.prepareStatement(sql);
     
     ResultSet rs = pstmt.executeQuery();
     rs.next();
     int p1 = rs.getInt("p1");
     int p2 = rs.getInt("p2");
     int p3 = rs.getInt("p3");
     int p4 = rs.getInt("p4");
     int p5 = rs.getInt("p5");
     double tot = rs.getDouble("tot");
     
     int chong=400;
     
     int per1 = (int)(chong*(p1/tot));
     int per2 = (int)(chong*(p2/tot));
     int per3 = (int)(chong*(p3/tot));
     int per4 = (int)(chong*(p4/tot));
     int per5 = (int)(chong*(p5/tot));
     
%>
<!DOCTYPE html>
<html>
<head>
<style>
   .food{
      display:inline-block;
      height:20px;
      border: 1px solid red;
   }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <table width="560" align="center">
       <tr>
           <td width="60">순대국밥</td>
           <td><span class="food" style="width:<%=per1%>px;"></span></td>
           <td width="40"> <%=p1%>명</td>
       </tr>
        <tr>
           <td width="60">부대찌개</td>
           <td><span class="food" style="width:<%=per2%>px;"></span></td>
           <td width="40"> <%=p2%>명</td>
       </tr>
        <tr>
           <td width="60">짜장면</td>
           <td><span class="food" style="width:<%=per3%>px;"></span></td>
           <td width="40"> <%=p3%>명</td>
       </tr>
       <tr>
           <td width="60">초밥</td>
           <td><span class="food" style="width:<%=per4%>px;"></span></td>
           <td width="40"> <%=p4%>명</td>
       </tr>
       <tr>
           <td width="60">김밥</td>
           <td><span class="food" style="width:<%=per5%>px;"></span></td>
           <td width="40"> <%=p5%>명</td>
       </tr>
       
    </table>
</body>
</html>