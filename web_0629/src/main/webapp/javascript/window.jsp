<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    // prompt(); // => 간단한 텍스트 입력 창
   // let chk=confirm("확인을 누르시면 네이버로, 취소를 누르시면 다음으로"); // 두개의 버튼이 보인다  확인(true), 취소(false)
    if(chk)
    {
    	//location="http://www.naver.com";
    }	
    else
    {
    	//location="http://daum.net";
    }
   
   function form_del()
   {
	   var chk=confirm("지우시려면 확인, 아니면 취소를 클릭");
	   if(chk)
	   {	   
	     document.pkc.name.value="";
	     document.pkc.age.value="";
	   }
   }
  </script>
</head>
<body>  <!-- window.jsp -->
   <form name="pkc">
   이름 <input type="text" name="name"> <p>
   나이 <input type="text" name="age"> <p>
    <input type="submit" value="전송">
    <input type="button" onclick="form_del()" value="초기화">
   </form>
</body>
</html>






