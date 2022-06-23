<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
 
    function init()
    {
    	//alert("하하하");
    	document.getElementById("aa").innerText="안녕하세요";
    }
    //init();
  </script>
</head>
<body onload="init()"> <!-- load.jsp => load이벤트 : 문서를 읽을때 -->
   <div id="aa"></div>
</body>
</html>



