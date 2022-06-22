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
	   // 여기서 유효성 검사를 실시
	   // 1. 이름은 값이 무조건 들어와야 된다... => 이름은 길이가 1자 이상
	   // 이름폼태그의 값 읽어오기  => 폼의 접근은 DOM으로 해도 되고, 폼객체로 접근할 수도 있다..
	   //alert(document.pkc.name.value);           // document.폼이름.입력폼이름.value
	   if(document.pkc.name.value.trim() == "") // 이름이 비었느냐
	   {
		   alert("이름을 입력하세요");
		   document.pkc.name.focus();
		   return false;
	   }
	   else if(document.pkc.pwd.value.trim() == "") // 비번이 비었느냐
	        {
		       alert("비밀번호 입력");
		       document.pkc.pwd.focus();
		       return false;
	        }
	        else if(document.pkc.sogae.value.trim() == "")
	        	 {
	        	    alert("소개를 입력");
	        	    document.pkc.sogae.focus();
	        	    return false;
	        	 }
	             else
	             {
	        	    return true;
	             }	   
   }
 </script>
</head>
<body>  <!-- form_text.jsp -->
  <!-- 폼태그에 키보드로 입력한 폼태그의 유효성 검사를 하기 -->
  <form name="pkc" method="post" action="a.jsp" onsubmit="return check()">
    이름 <input type="text" name="name"> <p>
    비번 <input type="password" name="pwd"> <p>
    소개 <textarea rows="5" cols="40" name="sogae"></textarea> <p>
    <input type="submit" value="전송">
  </form>
</body>
</html>