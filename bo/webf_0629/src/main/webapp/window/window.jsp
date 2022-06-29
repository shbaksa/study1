<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
     // prompt(); => 간단한 텍스트 입력창
     /* let chk=confirm("확인을 누르시면 네이버로, 취소를 누르시면 구글로"); // 두개의 버튼이 보인다 확인(true), 취소(false)
     if(chk)
    	 {
    	     location = "https://www.naver.com";
    	 }
     else
    	 {
    	     location = "https://www.google.co.kr";
    	 } */
     function form_del()
     {
    	 var chk=confirm("지우시려면 확인, 아니면 취소를 클릭");
    	 var a=document.pkc.name.value;
    	 var b=document.pkc.age.value;
    	 if(chk)
    		 {
    		     document.pkc.name.value="";
    		     document.pkc.age.value="";
    		 }
    	 else
    		 {
    		     return false;
    		 }
    	 
    	 
     }
  </script>
</head>
<body> <!-- window.jsp -->
     <form name="pkc" onreset="return form_del()">
     이름 <input type="text" name="name"> <p>
     나이 <input type="text" name="age"> <p>
        <input type="submit" value="전송">
        <input type="reset" value="초기화">
    </form>
</body>
</html>