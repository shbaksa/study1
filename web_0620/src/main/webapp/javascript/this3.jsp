<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function check(my) // my==document.pkc
   {
	   if(my.name.value=="")
       {
		   alert("이름을 입력하세요");
		   my.name.focus();
		   return false;
       }
	   else if(my.age.value=="")
		    {
		       alert("나이를 입력하세요");
		       my.age.focus();
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
   <form method="post" action="a.jsp" onsubmit="return check(this)">
     이름 <input type="text" name="name"> <p>
     나이 <input type="text" name="age"> <p>
     <input type="submit" value="저장">
   </form>
</body>
</html>