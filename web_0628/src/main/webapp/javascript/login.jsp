<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   .login_form {
     text-align:center;
     margin-top:100px;
   }
   .login_form input {
     width:300px;
     height:40px;
     border:1px solid green;
   }
   .login_form input[type=submit]  {
     width:306px;
   }
   #search {
     text-align:center;
   }
   #userid , #pwd {
     display:inline-block;
     width:120px;
     height:30px;
     border:1px solid green;;
     padding-top:7px;
     cursor:pointer;
   }
   #userid_search {
     margin:auto;
     width:160px;
     height:140px;
     margin-top:30px;
     display:none;
   }
   .us {
     width:160px;
     height:140px;
     border:1px solid red;
     text-align:center;
   }
   .us input {
     width:120px;
     height:26px;
   }
   .us input[type=button] {
     width:128px;
     height:28px;
   }
 </style>
</head>
<body> <!-- login.jsp -->
  <form method="post" action="login_ok.jsp" class="login_form">
    <input type="text" name="userid" placeholder="아이디"> <p>
    <input type="password" name="pwd" placeholder="비밀번호"><p>
    <input type="submit" value="로그인">
  </form>
  <div id="search">
    <div id="userid" onclick="us_view(0)"> 아이디 찾기 </div>
    <div id="pwd" onclick="us_view(1)"> 비밀번호 찾기 </div>
  </div>
  <div id="userid_search">
   <span id="inn"></span>
   <form name="us" class="us">
    <input type="text" name="name" placeholder="이 름"> <p>
    <input type="text" name="phone" placeholder="전화번호"> <p>
    <input type="button" value="아이디 찾기" onclick="search_userid()">
   </form>
   <form name="ps" class="ps">
    <input type="text" name="userid" placeholder="아이디"> <p>
    <input type="text" name="name" placeholder="이 름"> <p>
    <input type="text" name="phone" placeholder="전화번호"> <p>
    <input type="button" value="비밀번호 찾기" onclick="search_pwd()">
   </form>
  </div>
  <script>
    function us_view(n) // 아이디찾기 버튼과 비밀번호 찾기 버튼
    {
    	document.getElementById("userid_search").style.display="block";
    	if(n==0)
    	{	
    		document.ps.style.display="none";
    		document.us.style.display="block";
    	}
    	else
        {
    		document.us.style.display="none";
    		document.ps.style.display="block";
        }
    	
    	document.getElementById("inn").innerText="";
    }
    function search_pwd()
    {
    	var name=document.ps.name.value;
    	var phone=document.ps.phone.value;
    	var userid=document.ps.userid.value;
    	var chk=new XMLHttpRequest();
    	chk.open("get","pwd_search.jsp?name="+name+"&phone="+phone+"&userid="+userid);
    	chk.send();
    	chk.onreadystatechange=function()
    	{
    		if(chk.readyState==4)
    	    {
    			var pwd=chk.responseText.trim();
    			if(pwd=="1")
    			{
    				alert("정보가 일치하지 않습니다");
    			}	
    			else
    			{
    				document.getElementById("inn").innerText="이메일로 전송하였습니다";
    				document.ps.style.display="none";
    				document.ps.userid.value="";
    				document.ps.name.value="";
    				document.ps.phone.value="";
    			}	
    		}
    	}
    }
    function search_userid() // 사용자 아이디를 가져와서 ajax를 통해 출력해주기
    {
    	// 이름과 전화번호 가져오기
    	var name=document.us.name.value;
    	var phone=document.us.phone.value;
    	var chk=new XMLHttpRequest();
    	//location="userid_search.jsp?name="+name+"&phone="+phone;
    	chk.open("get","userid_search.jsp?name="+name+"&phone="+phone);
    	                            // jsp?userid=홍길동&phone=010-1234-5678
    	chk.send();
    	chk.onreadystatechange=function()
    	{
    		if(chk.readyState==4)
    		{
    			var uid=chk.responseText.trim(); // 아이디 값
    			if(uid=="1")
    			{
    				alert("입력하신 이름과 전화번호가 일치하지 않습니다");
    			}	
    			else // 아이디를 출력해주기
    			{
    				document.getElementById("inn").innerText="아이디 : "+uid;
    				// 아이디찾기 폼태그를 숨기기
    				document.us.style.display="none";
    				// document.getElementsByClassName("us")[0].style.display="none";
    				document.us.name.value="";
    				document.us.phone.value="";
    			}	
    		}	
    	}
    }
  </script>
</body>
</html>