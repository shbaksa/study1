<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function hap()
    {
       // form태그에 읽은 자료는 무조건 문자
       var a=parseInt(document.pkc.a.value);
       var b=parseInt(document.pkc.b.value);
       var tot=0;
       for(i=a;i<=b;i++)
       {
    	   tot=tot+i;
       }
       document.getElementById("aa").innerText=tot;
    }
  </script>
</head>
<body>
  <form name="pkc">
    a : <input type="text" name="a" size="2"><p>
    b : <input type="text" name="b" size="2"><p>
    <input type="button" onclick="hap()" value="합구하기"> <p>
    결과 : <span id="aa"></span>
  </form>
</body>
</html>