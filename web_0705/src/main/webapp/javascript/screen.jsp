<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function func1()
    {
    	//모니터의 사이즈
        alert(screen.width+" "+screen.height);
    }
    
    function func2()
    {   // 이용할수 있는 모니터
        alert(screen.availWidth+" "+screen.availHeight);
    }
    function func3()
    {   // 브라우저의 가로 세로
    	alert(window.innerWidth+" "+window.innerHeight);
    	alert(document.documentElement.clientHeight+" "+document.documentElement.clientWidth);
    }
    function func4()
    {
    	alert(document.body.clientWidth+" "+document.body.clientHeight);
    }
  </script>
</head>
<body> <!-- screen.jsp => screen 객체 -->
  <input type="button" onclick="func1()" value="모니터가로세로"> <p>
  <input type="button" onclick="func2()" value="모니터이용가능가로세로"> <p>
  <input type="button" onclick="func3()" value="브라우저가로세로"> <p>
  <input type="button" onclick="func4()" value="브라우저가로세로2">
 
</body>
</html>