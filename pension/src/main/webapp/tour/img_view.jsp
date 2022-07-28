<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
  function setview(n)
  {
	  for (var image of event.target.files)
	  {
		  var reader = new FileReader(); 
		  reader.onload=function()
		  {
			  var img = document.createElement("img"); 

	            img.setAttribute("src", event.target.result); 
	            img.setAttribute("width","40");
	            img.setAttribute("valign","middle");
	            
	            document.getElementsByClassName("img")[n].appendChild(img);  //새로 선택한 이미지 div에 출력

		  };
		   
	 	   reader.readAsDataURL(image); 
	  }	  
  }
 </script>
</head>
<body>
<span class="img"></span><input type="file" id="image" accept="image/*" onchange="setview(0)" multiple/> <p>
<span class="img"></span><input type="file" id="image" accept="image/*" onchange="setview(1)" multiple/> 
   
</body>
</html>