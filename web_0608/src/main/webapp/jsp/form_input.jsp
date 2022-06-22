<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- form_input.jsp -->
 <!-- 다양한 폼태그 -->
 <form method="post" action="form_input_ok.jsp">
   <!-- 키보드 입력 -->
   이름 <input type="text" name="name"> <p>
   비번 <input type="password" name="pwd"> <p>
   소개 <textarea cols="40" rows="5" name="sogae"></textarea> <p>
   <!-- 마우스로 체크 -->
   성별 <input type="radio" name="sung" value="남자">남자
       <input type="radio" name="sung" value="여자">여자
       <input type="radio" name="sung" value="선택안함">선택안함 <p>
   취미 <input type="checkbox" name="hobby" value="낚시">낚시
       <input type="checkbox" name="hobby" value="여행">여행
       <input type="checkbox" name="hobby" value="독서">독서
       <input type="checkbox" name="hobby" value="음주">음주
       <input type="checkbox" name="hobby" value="잠자기">잠자기 <p>
   지역 <select name="area">
         <option value="0"> 서울 </option>
         <option value="1"> 경기도 </option>
         <option value="2"> 강원도 </option>
         <option value="3"> 충청도 </option>
         <option value="4"> 전라도 </option>
         <option value="5"> 경상도 </option>
         <option value="6"> 제주도 </option>
       </select> <p>
    <input type="submit" value="전송">
   
 </form>
</body>
</html>




