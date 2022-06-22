<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
  <style>
    #aa {
      color:red;
      font-size:12px;
    }
  </style>
  <script>
    function check(my)
    {
    	if(my.value.trim()=="") // 이름 입력칸이 비었다
    	{
    		//alert("이름을 입력하세요"); // 아래의 포커스를 사용하고 싶으면 경고창이 아닌 innerText
    		document.getElementById("aa").innerText="이름을 입력하세요";
    		my.focus();
    	}
    	else
        {
    		document.getElementById("aa").innerText="";
        }
    }
  </script>
</head>
<body>
   <form name="pkc">
     이름 <input type="text" name="name" onblur="check(this)"><span id="aa"></span> <p>
     나이 <input type="text" name="age"> <p>
     <input type="submit" value="전송">
   </form>
</body>
</html>




