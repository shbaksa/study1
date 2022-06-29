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
	   // a,b에 해당하는 폼태그의 값을 읽어온다
	   var a=parseInt(document.pkc1.a.value);
	   var b=Number(document.pkc1.b.value);
	   // 합을 구하기
	   var tot=0;
	   for(i=a;i<=b;i++)
	   {
		   tot=tot+i;
	   }
	   // 합을 전달
	   document.pkc1.result.value=tot;
   }
   
   function func2()
   {
	   // n값을 입력받아서 n의 배수의 합
	   var n=Number(document.pkc2.n.value);
	   var tot=0;
	   for(i=1;i<=100;i++)
	   {
		  if(i%n == 0) 
		     tot=tot+i;
	   }	   
	   
	   document.pkc2.result.value=tot;
   }
   
   function func3()
   {
	   // 읽는 값X
	   // 1~45의 값구하기
	   var num=Math.random()*45; //0~45사이의 실수
	   num=parseInt(num); // 0~44까지의 정수
	   num=num+1;  // 1~45
	   
	   document.pkc3.result.value=num;
	   //alert(num);
   }
 </script>
</head>
<body> <!-- 0614/form_ex2.jsp -->
   <!-- a부터 b까지의 합 구하기 -->
   <form name="pkc1">
     a:<input type="text" name="a" size="3">
     b:<input type="text" name="b" size="3">
     <input type="button" value="계산" onclick="func1()">
     결과:<input type="text" name="result" size="5">
   </form>
   <hr>
   <!-- 1~100까지의 n의 배수의 합 구하기 -->
   <form name="pkc2">
     n:<input type="text" name="n" size="3">
     <input type="button" value="계산" onclick="func2()">
     결과:<input type="text" name="result" size="5">
   </form>
   <hr>
   <!-- 1~45까지의 임의의 숫자를 구하여 전달하기 -->
   <form name="pkc3">
     <input type="button" value="계산" onclick="func3()">
     결과:<input type="text" name="result" size="5">
   </form>
</body>
</html>