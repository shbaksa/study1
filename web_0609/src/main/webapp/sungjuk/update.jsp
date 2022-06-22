<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
 
    // request
    String hakbun=request.getParameter("hakbun");
    
    // 쿼리 생성
    String sql="select * from sungjuk where hakbun=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,hakbun);
    
    // 쿼리 실행 => ResultSet
    ResultSet rs=pstmt.executeQuery();
    rs.next();
    
    // 아래의 폼태그에 값을 적절히 넣어준다..
    
%>
<body> <!-- update.jsp -->
  <form method="post" action="update_ok.jsp">
     <input type="hidden" name="hakbun" value="<%=rs.getString("hakbun")%>">
     학번 <%=rs.getString("hakbun")%> <p>
     이름 <input type="text" name="name" value="<%=rs.getString("name")%>"> <p>
     국어 <input type="text" name="kor" value="<%=rs.getString("kor")%>"> <p>
     영어 <input type="text" name="eng" value="<%=rs.getString("eng")%>"> <p>
     수학 <input type="text" name="mat" value="<%=rs.getString("mat")%>"> <p>
     <input type="submit" value="수정">
  </form>
</body>
</html>
<%
    rs.close();
    pstmt.close();
    conn.close();
%>