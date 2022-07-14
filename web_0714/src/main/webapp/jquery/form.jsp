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
    		alert($("#name").val()); // document.pkc.name.value
    		alert($("#age").val());  // document.pkc.age.value
    	});
    	$("#btn2").click(function()
    	{
    		$("#name").val("슈퍼맨"); //document.pkc.name.value="슈퍼맨";
    		$("#age").val("44"); //document.pkc.age.value=44;
    	});
    });
  </script>
</head>
<body> <!-- form.jsp : jquery에서 폼태그의 값을 읽어오는 메소드 -->
  <form name="pkc">
    이름 <input type="text" id="name" name="name"> <p>
    나이 <input type="text" id="age" name="age"> <p>
    <input type="button" id="btn1" value="폼에 입력된 값 가져오기">
    <input type="button" id="btn2" value="폼에 값을 넣어주기">
  </form>
</body>
</html>



