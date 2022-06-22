<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>  <!-- form.jsp -->
  <!-- 사용자로부터 키보드,마우스로 값을 입력받는 태그 -->
  <form>
    <!-- 키보드로 입력하는 양식 -->
    <input type="text"> <p>
    <input type="password"> <p>
    <textarea cols="30" rows="4"></textarea> <p>
    
    <!-- 마우스로 선택하는 양식 -->
    <input type="radio" name="food">
    <input type="radio" name="food">
    <input type="radio" name="food">
    <input type="radio" name="food">
     <p>
    <input type="checkbox" name="hobby">
    <input type="checkbox" name="hobby"> 
    <input type="checkbox" name="hobby"> 
    <input type="checkbox" name="hobby"> 
     <p>
     <select>
       <option> 선 택 </option>
       <option> 짜장면 </option>
       <option> 우동 </option>
       <option> 탕수육 </option>
       <option> 팔보채 </option>
     </select> <p>
     
     <!-- 파일선택 -->
     <input type="file"> <p>
     
     <!-- 버튼 모양 -->
     <input type="button" value="클릭"> <p>
     <!-- 주로 자바스크립트 함수 호출 -->
     <input type="submit" value="전송"> <p>
     <input type="image" src="a.jfif" width="100"> <p>
     <!-- 현재 사용자가 입력한 내용 서버로 전송 -->     
     <input type="reset" value="취소"> <p>
     <!-- 현재 폼에 입력된 값들을 초기화 -->
     
     <!-- 브라우저에 표시 되지 않는 양식 -->
     <input type="hidden" value="ddd"> 
  </form>
</body>
</html>










