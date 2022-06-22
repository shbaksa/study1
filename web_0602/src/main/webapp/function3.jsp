<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   // 1에서 100까지의 합을 구하는 함수
   function hap1()
   {
	   var tot=0;
	   for(i=1;i<=100;i++)
	   {
	        tot=tot+i;	   
	   }
	   alert(tot);
   }
   // 1부터 n까지의 합을 구해서 alert으로 출력
   function hap2(n)
   {
	   var tot=0;
	   for(i=1;i<=n;i++)
	   {
	        tot=tot+i;	   
	   }
	   alert(tot);
   }
   // a부터 b까지의 합을 구해서 alert으로 출력
   function hap3(a,b)
   {
	   var tot=0;
	   for(i=a;i<=b;i++)
	   {
	        tot=tot+i;	   
	   }
	   alert(tot);
   }
 </script>
</head>
<body> <!-- function3.jsp -->
  <!-- 자바스크립트 함수에서 필요한 값이 있을경우 함수호출시 값을 전달할 수 있다.. -->
  <!-- 1부터 100까지의 합을 구하는 함수 호출 -->
  <input type="button" value="1부터 100까지의 합" onclick="hap1()">
  <input type="button" value="1부터 n까지의 합" onclick="hap2(50)">
  <input type="button" value="a부터 b까지의 합" onclick="hap3(10,60)">
</body>
</html>











