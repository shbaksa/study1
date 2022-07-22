<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   var name=["최윤선","장현석","김기범","정재영","윤자영","류동헌"];
   function check()
   {
	   var n=parseInt(Math.random()*name.length);
	   
	   document.getElementById("aa").innerText=name[n];
   }
 </script>
</head>
<body>
   <input type="button" onclick="check()" value="click">
   <hr>
   당첨 : <div id="aa"></div>
</body>
</html>


