<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   .ss {
      color:red;
      font-size:30px;
      border:1px solid blue;
      width:200px;
      height:40px;
    }
 </style>
 <script src="http://code.jquery.com/jquery-latest.js"></script>
  <script>
    $(function()
    {
    	$("#aa").click(function()
        {
    		$("#aa").addClass("ss");
        });
    	
    	$("#btn1").click(function()
        {
    		$("#aa").removeClass("ss");
        });
    });
  </script>
</head>
<body> <!-- addclass2.jsp -->
  <input type="button" id="btn1" value="removeClass">
  <div id="aa"> 안녕하세요 </div>
</body>
</html>





