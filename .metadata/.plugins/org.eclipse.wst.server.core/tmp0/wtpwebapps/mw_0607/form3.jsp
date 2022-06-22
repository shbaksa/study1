<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 
1. 성적을 입력하여  A,B,C,D,F 출력하기

2.  숫자n입력     1~100까지의  n의 배수의 합 출력하기

3.  ( 1:짜장면, 2:우동, 3:짬뽕, 4:탕수육, 5:팔보채) 숫자로 입력받은 후
     1인 경우    짜장면을 시켰습니다 .......... -->
     
     <form method="post" action="cal3.jsp">
     A : <input type="text" name="a"> <p>
     B : <input type="text" name="b"> <p>
     C : <input type="text" name="c"> <p>
     D : <input type="text" name="d"> <p>
     F : <input type="text" name="f"> <p>
     <input type="submit" value="성적제출"> <p>  
     </form> 
    
     <form method="post" action="cal4.jsp">    
     N : <input type="text" name="n"> <p>
     <input type="submit" value="N값제출"> <p>      
     </form>
     
     <form method="post" action="cal5.jsp">
     1: 짜장면 2: 우동 3: 짬뽕 4: 탕수육 5: 팔보채 <p>
     메뉴 : 1~5 <input type="text" name="aa"> <p>  
     <input type="submit" value="메뉴"> <p>  
     </form>
     
     <form method="post" action="cal6.jsp">
     A ~ B 까지의 n의배수 합구하기 <p>
     A : <input type="text" name="a"> <p>
     B : <input type="text" name="b"> <p>
     N : <input type="text" name="n"> <p>
     <input type="submit" value="값입력">
     
     </form>
     
     
     
</body>
</html>