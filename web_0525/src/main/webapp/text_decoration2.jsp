<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    a {
      text-decoration:none;
      color:black;
    }
    a:hover { /* a태그의 상태중에 마우스가 올라왔을때 */
      text-decoration:underline;
      color:green;
    }
    #aa:hover {
      color:red;
    }
    .bb:hover {
      color:pink;
    }
  </style>
</head>
<body> <!-- text_decoration2.jsp -->
  <!-- a태그는 밑줄을 가지는데 여기에 자주 사용하는 속성 -->
  <a href="http://www.naver.com"> 네이버 </a> <p>
  <a href="http://www.coupang.com"> 쿠팡 </a> <p>
  <a href="http://www.kurly.com"> 마켓컬리 </a>
  <hr>
  <div id="aa"> 오늘은 수요일 </div>
  <span class="bb"> 저녁에 비가와요 </span>
</body>
</html>