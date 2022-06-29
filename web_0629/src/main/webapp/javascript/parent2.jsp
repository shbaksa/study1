<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function winopen()
    {
    	s1=open("son2.jsp","aa","width=300,height=300");
    }
    function move()
    {
    	//  자식창의 폼태그=현재창의 폼태그;
    	s1.document.pkc.name.value=document.pkc.name.value;
    	s1.document.pkc.age.value=document.pkc.age.value;
    }
  </script>
</head>
<body>
  <b onclick="winopen()"> 창 열기 </b> <p>
  <form name="pkc">
    이름 <input type="text" name="name"> <p>
    나이 <input type="text" name="age"> <p>
    <input type="button" onclick="move()" value="자식창에 값보내기">
  </form>
  <hr>
  <a href="http://www.kbs.co.kr" target="aa">kbs</a>
</body>
</html>






