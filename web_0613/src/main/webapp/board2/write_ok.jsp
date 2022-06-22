<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- board2/write_ok.jsp -->
 <%@page import="java.sql.*" %>
 <%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    request.setCharacterEncoding("utf-8");
    String title=request.getParameter("title");
    String name=request.getParameter("name");
    String content=request.getParameter("content");
    String pwd=request.getParameter("pwd");
    String area=request.getParameter("area");  // javascript로 유효성 검사체크
   
    String bimil;
    if(request.getParameter("bimil") == null)
    {
       bimil="0";
    }
    else
    {
       bimil=request.getParameter("bimil");
    }
    
    // 쿼리 생성
    String sql="insert into board2(title,name,content,writeday,bimil,area,pwd) ";
    sql=sql+"values(?,?,?,now(),?,?,?)";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,title);
    pstmt.setString(2,name);
    pstmt.setString(3,content);
    pstmt.setString(4,bimil);
    pstmt.setString(5,area);
    pstmt.setString(6,pwd);
    
    // 쿼리 실행
    pstmt.executeUpdate();
    
    // close
    pstmt.close();
    conn.close();
    
    // list로 이동
    response.sendRedirect("list.jsp");
 
 
    // radio,checkbox의 값 체크부분
    /* out.print(request.getParameter("name"));
    out.print("<hr>");
    out.print(request.getParameter("area"));
    out.print("<hr>");
    out.print(request.getParameter("bimil")); */
 %>
</body>
</html>