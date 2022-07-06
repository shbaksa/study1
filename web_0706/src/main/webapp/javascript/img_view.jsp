<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #pkc {
      display:none;
    }
  </style>
  <script>
    function change(name)
    {
    	document.getElementById("pkc").style.display="inline";
    	document.getElementById("pkc").src=name;
    }
  </script>
</head>
<body> <!-- img_view.html => 글자를 클릭하면 그림을 보이게 하기 -->
  <!-- 자바스크립트 함수를 실행하고자 할때 a태그의 href속성을 이용할수 있고, 아무태그나 on이벤트로 이용할 수 있다  -->
  <a href="javascript:change('bg1.jpg')"> 그림1 </a> <!-- bg1.jpg -->
  <a href="javascript:change('bg2.jpg')"> 그림2 </a> <!-- bg2.jpg -->
  <span onclick="change('bg3.jpg')"> 그림3 </span>  <!-- bg3.jpg -->
  <span onclick="change('bg4.jpg')"> 그림4 </span> <!-- bg4.jpg -->
  <hr>
  <img src="" width="400" height="300" id="pkc">
</body>
</html>



