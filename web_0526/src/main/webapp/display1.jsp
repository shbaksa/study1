<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #aa {
       display:inline;
    }
    #bb {
       display:block;
    }
  </style>
</head>
<body> <!-- display1.jsp -->
  <!-- display:값;  => block태그와 inline태그의 변환 -->
  <div>안녕</div>
  <div>하세요</div>
  <div>오늘은</div>
  <div>목요일</div>
  <hr>
  <div id="aa">안녕</div>
  <div id="aa">하세요</div>
  <div id="aa">오늘은</div>
  <div id="aa">목요일</div>
  <hr> inline태그<p>
  <span>안녕</span>
  <span>하세요</span>
  <span>오늘은</span>
  <span>목요일</span>
  <hr>
  <span id="bb">안녕</span>
  <span id="bb">하세요</span>
  <span id="bb">오늘은</span>
  <span id="bb">목요일</span>
</body>
</html>