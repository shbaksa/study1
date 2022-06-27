<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #first {
      width:1000px;
      height:30px;
      color:white;
      text-align:center;
      margin:auto;
      background:purple;
    }
    #second {
      width:1000px;
      height:30px;
      text-align:right;
      margin:auto;
    }
  </style>
</head>
<body> <!-- main.jsp -->
   <div id="first"> 즐거운 월요일이 시작되었습니다... 힘들어도 힘내요!!  </div>
   <div id="second"> 
     <%
      if(session.getAttribute("userid")==null)
      {
     %>
      <a href="login.jsp"> 로그인 </a>  <!-- 로그인 전 -->
      회원가입
     <%
      }
      else
      {
     %> 
      <%=session.getAttribute("name")%>님 
      <a href="logout.jsp"> 로그아웃 </a>             <!-- 로그인 후 --> 
     <%
      }
     %>
      고객센터
   </div>
</body>
</html>