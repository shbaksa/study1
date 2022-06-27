<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
   function addf()
   { 
	   var frm=document.pkc;
	   var str=frm.add.value;
	   if(frm.member.value.indexOf(str)==-1)
	     frm.member.value=frm.member.value+" "+str;
   }
   function subf()
   {
	   var frm=document.pkc;
	   var str=frm.sub.value;
	   if(frm.member.value.indexOf(str)!=-1)
		   frm.member.value=frm.member.value.replace(" "+str,"");
   }
 </script>
</head>
<body>
   
   <form name="pkc">
     <input type="text" name="member" size="60" value=" "> <p>
     <input type="text" name="add" size="4"> <input type="button" value="추가" onclick="addf()">
     <input type="text" name="sub" size="4"> <input type="button" value="삭제" onclick="subf()">
   </form>
</body>
</html>