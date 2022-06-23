<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>  // document.body.scrollTop => doctype이 없을때 사용가능
   function check()
   {
	    // scroll이 발생할때 가장 많이 이용하는 값 : 상단으로부터 몇 px 스크롤 되었는지
	    var num=document.documentElement.scrollTop // 상단으로부터 몇 px 스크롤 되었는지 값을 저장
        document.getElementById("aa").innerText=num;   
        document.getElementById("aa").style.top=(300+num)+"px";
	    document.getElementById("bb").innerText=num;    
   }
   document.onscroll=check;
   function movetop()
   {
	   document.documentElement.scrollTop="0px";
   }
  </script>
  <style>
    #aa {
       position:absolute;
       left:200px;
       top:300px;
    }
    #bb {
       position:fixed;
       left:500px;
       top:300px;
    }
    #cc {
       position:fixed;
       left:600px;
       top:400px;
       cursor:pointer;
    }
  </style>
</head>
<body>  <!-- scroll.jsp => scroll이벤트 -->
    <div id="aa"></div><div id="bb"></div> <div id="cc" onclick="movetop()">↑</div>
   하하하 첫라인<p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>   
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
   하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>하하하 <p>
</body>
</html>