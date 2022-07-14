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
        // 특정요소(태그)내에 텍스트, html이 포함된 내용을 넣는 방법
        $("#btn1").click(function()
        {
        	// document.getElementById("aa").innerText="<u>감사합니다</u>";
        	$("#aa").text("<u>감사합니다</u>");
        });
        $("#btn2").click(function()
        {
        	//document.getElementById("bb").innerHTML="<u>감사합니다</u>";
        	$("#bb").html("<u>감사합니다</u>");
        });
        
        $("#btn3").click(function()
        {
        	//alert(document.getElementById("cc").innerText);
        	alert($("#cc").text());
        });
        
        $("#btn4").click(function()
        {
        	//alert(document.getElementById("cc").innerHTML);
        	alert($("#cc").html());
        });
    });
  </script>
</head>
<body> <!-- jquery_html.jsp  =>  innerText, innerHTML : text() , html() -->
  <b id="btn1"> id="aa"에 값 넣기</b>
  <b id="btn2"> id="bb"에 태그를 포함한 값 넣기</b>
  <input type="button" id="btn3" value="text읽기">
  <input type="button" id="btn4" value="html읽기">
  <hr>
  <div id="aa"></div> <div id="bb"></div> <div id="cc"> <b> 오늘은 목요일 </b> </div>
</body>
</html>





