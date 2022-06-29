<%@page import="java.io.PrintWriter"%>
<%@page import="User.Userinfo"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
  <% request.setCharacterEncoding("utf-8"); %>
  

<jsp:useBean id="user" class="User.user" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인화면 구현</title>
</head>
<body>
<%
		String userID = null;
		if(session.getAttribute("userID") != null)
		{
			userID = (String)session.getAttribute("userID");
		}
		
		if(userID != null)
		{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인되어 있습니다.')");
			script.println("location.href='hello.jsp'");
			script.println("</script>");
			
		}
		
		Userinfo userinfo = new Userinfo();
		int result = userinfo.login(user.getUserID(), user.getUserPassword());
		if(result == 1){
			session.setAttribute("userID",user.getUserID());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인 성공')");
			script.println("location.href='main.jsp'");
			script.println("</script>");
		}else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다')");
			script.println("history.back()");
			script.println("</script>");
		}else if(result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류입니다')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>
</body>
</html>