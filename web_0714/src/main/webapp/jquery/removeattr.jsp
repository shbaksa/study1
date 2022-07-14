<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script>
    $(function()
    {
    	 $("#btn1").click(function()
    	 {
    		 $("#aa").attr("align","right");
    	 });
    	 $("#btn2").click(function()
    	 {
    		 $("#aa").removeAttr("align");
    	 });
    });
  </script>
</head>
<body> <!-- removeattr.jsp  =>  removeAttr() : 속성지우기 -->
  <input type="button" id="btn1" value="우측정렬로변경">
  <input type="button" id="btn2" value="정렬속성지우기">
  <hr>
  <div id="aa" align="center"> 안녕하세요 </div>
</body>
</html>







