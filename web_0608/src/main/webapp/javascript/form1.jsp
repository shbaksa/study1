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
	   alert("함수호출");
	   // button으로 함수호출후 유효성 검사를 끝낸후 이상이 없다면
	   document.pkc.submit(); // 자바스크립트에 있는 전송 메소드
   }
   function check2()
   {
	   alert("함수호출");
	   return false;
	   // submit이 호출한 메소드는 주로 if문을 통해서 true, false를 전달
   }
 </script>
</head>
<body> <!-- form1.jsp -->
  <!-- 폼태그의 값을 서버에 전송하는 방법(어떤 버튼을 사용하는가) -->
  <!-- 일반적으로 폼태그에 입력된 값의 유효성검사를 자바스크립트를 통해 이루어짐 -->
  <form name="pkc" method="post" action="a.jsp">
    이름 <input type="text" name="name"> <p>
    비번 <input type="password" name="pwd"> <P>
    소개 <textarea cols="40" rows="5" name="sogae"></textarea> <p>
    <input type="button" onclick="check()" value="확인">
    <!-- button은 서버에 전송을 하지 못한다.. -->
  </form>
  <hr>                    <!-- on이벤트="return 메소드()"  => 해당메소드의 리턴값이 true이면 이벤트가동작 
                                                                            false이면 동작X -->
  <form name="pkc2" method="post" action="b.jsp" onsubmit="return check2()">
    이름 <input type="text" name="name"> <p>
    비번 <input type="password" name="pwd"> <P>
    소개 <textarea cols="40" rows="5" name="sogae"></textarea> <p>
    <input type="submit"  value="확인">
    <!-- submit은 무조건 action에 있는 문서로 이동 =>  현재 상태로는 유효성검사가 불가능 -->
  </form>
</body>
</html>