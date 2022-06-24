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
	   // 제목을 읽어온다
	   var title=document.pkc.title.value;
	   // 제목에서 10개를 자른다
	   var title=title.substring(0,10);
	   // 10자+****를 id="aa"에 전달
	   document.getElementById("aa").innerText=title+"****";
	   
	   // 10자 이외의 값은 문자하나당 * 하나로 처리
	   var len=document.pkc.title.value.length;
	   var str=title;
	   for(i=1;i<=len-10;i++)
	   {
		   str=str+"*";
	   }	
	   document.getElementById("bb").innerText=str;
   }
 </script>
</head>
<body> <!-- string2.jsp -->
  <!-- 제목을 입력한 후 버튼을 클릭하면   앞에서부터 10자를 제외한 나머지는 ****로 처리하여 id="aa"에 전달 -->
   <form name="pkc">
     제목 <input type="text" name="title" size="50"> <p>
     <input type="button" value="클릭" onclick="check()"> <p>
     <div id="aa"></div> <div id="bb"></div>
   </form>
</body>
</html>


