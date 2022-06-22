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
    	//alert(document.pkc.pay[0].checked) // checked는 체크가 되었으면 true, 아니면 false
    	var chk=0;
    	for(i=0;i<4;i++)
        {
    	  if(document.pkc.pay[i].checked) // 참이 발생되면 chk값은 1
    	  {
    		chk=1;
    	  }
        }

    	if(chk == 0)
        {
    		alert("결제방법을 선택하세요");
    		return false;
        }
    	else
    	{
    		return true;
    	}	
    }
  </script>
</head>
<body> <!-- form_radio.jsp -->
<!-- 폼태그에서 라디오를 유효성검사  => 무조건 선택하여야 한다. -->
  <form name="pkc" method="post" action="a.jsp" onsubmit="return check()">
     결제방법 : <input type="radio" name="pay">카드
              <input type="radio" name="pay">현금
              <input type="radio" name="pay">계좌이체
              <input type="radio" name="pay">외상 <p>
     <input type="submit" value="전송">
  </form>
</body>
</html>