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
	   //alert(document.pkc.name.value);
	   //alert(document.pkc.name.value.trim());
	   // 이름과 이메일 체크
	   if(document.pkc.name.value.trim()=="")
	   {
		   alert("이름을 입력하세요");
		   document.pkc.name.focus();
		   return false;
	   }
	   else if(document.pkc.email.value.trim()=="")
		    {
		       alert("이메일을 입력하세요");
		       document.pkc.email.focus();
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
  <form name="pkc" method="post" action="write_ok.jsp" onsubmit="return check()"> 
   <table width="600" align="center">
     <tr>
       <td> 제목 </td>
       <td> <input type="text" name="title" size="50"> </td>
     </tr>
     <tr>
       <td> 이름 </td>
       <td> <input type="text" name="name"> </td>
     </tr>
     <tr>
       <td> 내용 </td>
       <td> <textarea cols="50" rows="6" name="content"></textarea> </td>
     </tr>
     <tr>
       <td> 이메일 </td>
       <td> <input type="text" name="email" size="30"> </td>
     </tr>
     <tr>
       <td> 비밀번호 </td>
       <td> <input type="password" name="pwd"> </td>
     </tr>
     <tr>
       <td align="center" colspan="2"> <input type="submit" value="저장">  </td>
     </tr>
   </table>
  </form>
</body>
</html>