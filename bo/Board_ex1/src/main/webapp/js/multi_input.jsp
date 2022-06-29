<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    function chg(n)
    {
    	if(n==0) // 입력모드
        {
    		document.pkc.action="multi_input_ok.jsp";
    		document.pkc.submit.value="저장";
        }
    	else     // 수정모드
    	{
    		document.pkc.action="multi_update_ok.jsp";
    		document.pkc.submit.value="수정";
    	}	
    }
  </script>
</head>
<body>  <!-- 0615/multi_input.jsp : multi테이블에 이름과 나이를 입력하는 폼 -->
  <!-- 하나로 합친 폼 : action을 변경, submit의 value도 변경-->
  <span onclick="chg(0)">입력</span>
  <span onclick="chg(1)">수정</span>
  <hr>
  <form name="pkc" method="post" action="multi_input_ok.jsp">
     <input type="text" name="id" size="2">
     <input type="text" name="name" placeholder="이름 " size="4">
     <input type="text" name="age" placeholder="나이" size="3">
     <input type="submit" name="submit" value="저장">
  </form> 
  <hr>
  <!-- 
  <form method="post" action="multi_input_ok.jsp">
     <input type="text" name="name" placeholder="이름 " size="4">
     <input type="text" name="age" placeholder="나이" size="3">
     <input type="submit" value="저장">
  </form>
  <hr>
  <form method="post" action="multi_update_ok.jsp">
     <input type="text" name="id" size="2">
     <input type="text" name="name" placeholder="이름 " size="4">
     <input type="text" name="age" placeholder="나이" size="3">
     <input type="submit" value="변경">
  </form>
   -->
</body>
</html>