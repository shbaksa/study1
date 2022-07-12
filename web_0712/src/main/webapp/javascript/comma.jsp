<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
 function comma(price)
 {
    n=price.length; // 변경할 값의 길이를 구하기
     var num="";
     for(i=0;i<n;i++)
    {
       if(i%3==0&&i!=0)
         num=","+num;
       
  	   num=price.substr(price.length-1,1)+num;
       price=price.substring(0,price.length-1);
    }
     return num;
 }
 function comma2(price)
 {
	 price=price.replace(/\B(?=(\d{3})+(?!\d))/g,",");
	 return price; 
 }
 function comma3(price)
 {
	 return new Intl.NumberFormat().format(price); 
 }
 function view1()
 { 
	 var imsi=document.getElementById("imsi").value;
	 document.getElementById("tot").innerText=comma(imsi);
 }
 function view2()
 { 
	 var imsi=document.getElementById("imsi").value;
	 document.getElementById("tot").innerText=comma2(imsi);
 }
 function view3()
 { 
	 var imsi=document.getElementById("imsi").value;
	 document.getElementById("tot").innerText=comma3(imsi);
 }
</script> 
</head>
<body> <!-- comma.jsp : 자바스크립트로 숫자 3자리마다 ,를 추가 -->
  <input type="text" id="imsi">
  <input type="button" onclick="view1()" value="클릭1">
  <input type="button" onclick="view2()" value="클릭2">
  <input type="button" onclick="view3()" value="클릭3">
  <span id="tot"></span>
</body>
</html>