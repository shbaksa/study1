<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function chg(n) // 클릭에 의해 action속성을 변경
   {
	   if(n==0)
   	      document.pkc.action="a.jsp";
	   else if(n==1)
		        document.pkc.action="b.jsp";
	        else
	        	document.pkc.action="c.jsp";
   }
 </script>
</head>
<body> <!-- 0615/form_ex5.jsp -->
  <!-- 하나의 폼태그로 여러개의 문서로 전달 -->
  <!-- 아래의 하나의 폼을 이용하여 다른 jsp에 전달 -->
  <span onclick="chg(0)"> a.jsp </span>
  <span onclick="chg(1)"> b.jsp </span>
  <span onclick="chg(2)"> c.jsp </span>
  <hr>
  <form name="pkc" method="post" action="a.jsp">
    <input type="submit" value="전송">
  </form>
</body>
</html>




