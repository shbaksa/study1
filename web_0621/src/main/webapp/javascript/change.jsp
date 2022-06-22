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
	   alert();
   }
   
   function change(my)  // my==document.pkc.menu
   {
	   if(my.selectedIndex!=0)
	    document.getElementById("aa").innerText=my.value;
   }
 </script>
</head>
<body> <!-- change.jsp : change이벤트 : 값이 변경되었을때 -->
   <input type="text" onchange="check()" value="abcd"> <p>
   <!-- change이벤트는 거의 select태그에서 주로 사용한다. -->
   <form name="pkc">
   <select name="menu" onchange="change(this)"> <!-- select태그에서 현재의 option태그를 변경하면 발생 -->
     <option> 선 택 </option>
     <option value="5,000"> 짜장면 </option>
     <option value="8,000"> 짬 뽕 </option>
     <option value="15,000"> 탕수육 </option>
     <option value="33,000"> 전가복 </option>
   </select> <p>
    가격 : <span id="aa"></span>원 입니다.
   </form>
   <hr>
   <form name="chan">
     <select onchange="move(this)">
       <option> 패밀리 사이트 </option>
       <option value="http://www.naver.com"> 네이버 </option>
       <option value="http://daum.net"> 다음 </option>
       <option value="http://www.kbs.co.kr"> kbs </option>
       <option value="http://imbc.com"> mbc </option>
     </select>
   </form>
  <script>
    function move(my)
    {
       if(my.selectedIndex!=0) // select태그에서 선택된 option태그의 인덱스값을 
       {                             // 가지는게 selectedIndex
    	// location=my.value; // 현재창에서 이동
    	open(my.value,"","");
       }
    }
  </script>
</body>
</html>




