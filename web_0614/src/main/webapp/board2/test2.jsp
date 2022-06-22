<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   input[type=radio]  {
      display:none;
   }
   .aa {
      display:inline-block; /* inline태그에 가로, 세로크기를 주려면 block의 속성을 줘야 되기에 */
      width:40px;
      height:24px;
      border:1px solid red;
      text-align:center;
   }
 </style>
 <script>
   function check(n)
   {
	   document.pkc.sung[n].checked=true;
	   
	   if(n==0)
	   {	   
	      document.getElementsByClassName("aa")[0].style.background="red";
	      document.getElementsByClassName("aa")[0].style.color="white";
	      document.getElementsByClassName("aa")[1].style.background="white";
	      document.getElementsByClassName("aa")[1].style.color="black";
	   }
	   else
	   {
		  document.getElementsByClassName("aa")[1].style.background="red";
		  document.getElementsByClassName("aa")[1].style.color="white";
		  document.getElementsByClassName("aa")[0].style.background="white";
	      document.getElementsByClassName("aa")[0].style.color="black";
	   }
   }
 </script>
</head>
<body>
 <form name="pkc" method="post" action="aa.jsp">
  <input type="radio" name="sung" value="0"> <span class="aa" onclick="check(0)">남자</span>
  <input type="radio" name="sung" value="1"> <span class="aa" onclick="check(1)">여자</span>
 </form>
</body>
</html>







