<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
    function check()
    {
    	var chk=0;
    	for(i=0;i<5;i++)
    		{
    		   if(document.pkc.food[i].checked)
    			      chk=1;
    			   
    		}
    	if(chk==0)
    		{
    		   alert("체크를 하세요");
    		   return false; 		   
    		}
    	else
    		{
    		   return true;
    		}
    	
    }
</script>
<body>
   <form name ="pkc" method="post" action="vote_ok.jsp" onsubmit="return check()">
      <input type="hidden" name="id" value="1">
      <div>좋아하는 메뉴를 선택하시오</div>
      <div><input type="radio" name="food" value="0"> 순대국밥</div>
      <div><input type="radio" name="food" value="1"> 부대찌개</div>
      <div><input type="radio" name="food" value="2"> 짜장면</div>
      <div><input type="radio" name="food" value="3"> 초밥</div>
      <div><input type="radio" name="food" value="4"> 김밥</div>
      <div><input type="submit" value="투표하기"></div>
   </form>
</body>
</html>