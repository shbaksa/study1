<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function check()
   {
	   if(document.pkc.name.value=="")
       {
		   alert("이름을 입력하세요");
		   document.pkc.name.focus();
		   return false;
       }
	   else if(document.pkc.age.value=="")
		    {
		       alert("나이를 입력하세요");
		       document.pkc.age.focus();
		       return false;
		    }
	        else
	        {
	           return true;
	        }
   }
 </script>
</head>
<body>
   <form name="pkc" method="post" action="a.jsp" onsubmit="return check()">
     이름 <input type="text" name="name"> <p>
     나이 <input type="text" name="age"> <p>
     <input type="submit" value="저장">
   </form>
</body>
</html>