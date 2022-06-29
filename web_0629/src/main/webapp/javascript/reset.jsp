<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
   function form_del()
   {
	   var chk=confirm("지우시려면 확인, 아니면 취소를 클릭");
       if(chk)
    	   return true;
       else
    	   return false;
   }
  </script>
</head>
<body>  <!-- reset.jsp -->
   <form name="pkc" onreset="return form_del()">
   이름 <input type="text" name="name"> <p>
   나이 <input type="text" name="age"> <p>
    <input type="submit" value="전송">
    <input type="reset"  value="초기화">
   </form>
</body>
</html>






