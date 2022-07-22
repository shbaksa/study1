<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
    #pkc {
      width:230px;
      height:40px;
      border:1px solid green;
      display:flex;
      align-items:center;
    }
    #pwd {
      border:none;
      outline:none;
      margin-left:10px;
      height:25px;
    }
    #right {
      padding-top:10px;
    }
  </style>
  <script>
   var chk=0;
   function change()
   {
	   if(chk==0)
	   {
		   document.getElementById("pwd").type="text";
		   document.getElementById("img").src="visoff.png";
		   chk=1;
	   }
	   else
	   {
		   document.getElementById("pwd").type="password";
		   document.getElementById("img").src="vis.png";
		   chk=0;
	   }	
  
   }
  </script>
</head>
<body> <!-- attr_change.jsp -->
  <div id="pkc">
    <form>
      <input type="password" id="pwd">
      <span id="right" onclick="change()"> <img id="img" src="vis.png" width="30" valign="middle"> </span>
    </form>
  </div>
</body>
</html>