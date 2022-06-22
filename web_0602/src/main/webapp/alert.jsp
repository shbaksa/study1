<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
    // alert(); 프로그램중에 발생되는 여러값들을 경고창을 출력시 사용
    var kor=90;
    var eng=80; 
    var tot=kor+eng;
    alert("합 : "+tot);
    
    // document.write(); 프로그램중에 발생되는 여러값들을 브라우저내에 출력
    document.write("합 : "+tot);
    
    // console.log(); 프로그램중에 발생되는 값들을 콘솔창에서 확인
    console.log("학교종이 땡땡땡 오늘 소주 한잔?");
  </script>
</head>
<body>  <!-- alert.jsp -->
   <div id="aa"></div> <p>
   <div id="bb"></div> <p>
  <script>
     //innerText,innerHTML : body태그내의 각 요소들(태그)내에 값을 전달
     document.getElementById("aa").innerText="<u>즐거운 하루</u>";
     document.getElementById("bb").innerHTML="<u>목요일이네요</u>";
  </script>
</body>
</html>