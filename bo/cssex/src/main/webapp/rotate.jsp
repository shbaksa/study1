<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
		div{
		width : 100px;
		height : 100px;
		background:red;
		}
		#bb
		{
			transform:rotate(45deg);
		}
				#cc
		{
			transform:rotate(90deg);
		}
				#dd
		{
			transform:rotate(170deg);
		}
				#ee
				{
					position:absolute;
					left:300px;
					transform:scale(2,2);
				}
				#ff
				{
					transform:translate(500px,500px);
				}
				
	
</style>
</head>
<body>
	
<div id="aa"> rotate</div>
<div id="bb"> rotate</div>	
<div id="cc"> rotate</div>	
<div id="dd"> rotate</div>	
<div id="ee"> rotate</div>	
<div id="ff">  translate </div>
	
	
	
</body>
</html>