<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   // new 연산자를 이용하여 배열 만들기
   var arr=new Array(5); // 크기가 5인 배열 arr을 만들어라
   arr[10]=90;   // 자바스크립트는 배열선언한 인덱스값 범위를 벗어나도 에러가 X
   alert(arr[10]); 
   arr[0]=9;
   arr[1]="하하하";
   arr[2]=33.2;    // 자바스크립트는 자료형 X, 하나의 배열에 여러 자료형이 들어갈 수 있다..
   
   // 배열을 만들때 초기값을 주는 방법
   var chk=["홍길동","배트맨","슈퍼맨","원더우먼"];
 </script>
</head>
<body> <!-- array.jsp  : 자바스크립트에서 배열 -->

</body>
</html>