<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   .sub {
     display:none;
   }
 </style>
 <script>
   function check1(n) // 선택된 체크박스의 인덱스를 가져온다
   {
	   var len=document.getElementsByClassName("sub").length;
	   // 이전에 보였던 sub를 숨기기 => 모두 숨기기
	   for(i=0;i<len;i++)
	   {
		   document.getElementsByClassName("sub")[i].style.display="none";
	   }
	   // sub의 해당태그를 보이게 하기
	   document.getElementsByClassName("sub")[n].style.display="block";
   }
   var chk=0;
   function check(n) // 
   {
	   // 이전에 보였던 sub를 숨기기 => 이전의 값을 저장했다가 지우기
	   document.getElementsByClassName("sub")[chk].style.display="none";
	   
	   // sub의 해당태그를 보이게 하기
	   document.getElementsByClassName("sub")[n].style.display="block";
	   
	   chk=n;
   }
 </script>
</head>
<body>
  <div> 
    <input type="radio" name="chk" onclick="check(this.value)" checked value="0">계좌이체
    <input type="radio" name="chk" onclick="check(this.value)" value="1">신용카드
    <input type="radio" name="chk" onclick="check(this.value)" value="2">핸드폰결제 
    <input type="radio" name="chk" onclick="check(this.value)" value="3">현금지급
    <input type="radio" name="chk" onclick="check(this.value)" value="4">외상  
  </div>
  <hr>
  <div class="sub" style="display:block;"> 계좌이체 관련 내용 </div>
  <div class="sub"> 신용카드 관련 내용 </div>
  <div class="sub"> 핸드폰결제 관련 내용 </div>
  <div class="sub"> 현금지급 관련 내용 </div>
  <div class="sub"> 외상 관련 내용 </div>
</body>
</html>