<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	span{
		font-size:24px;
		width:160px;
		height:40px;
		border:1px solid red;
		}
			#aa
			{
				display:block;
			}
			#bb
			{
				display:inline-block;
				/* inline 속성에 block의 속성이 추가된 개념 */
				
			}
</style>
</head>
<body> <!-- display2.jsp -->

	<!-- display => block,inline, inline-block -->
	<hr> inline => block 태그 <hr>
	<span id="aa">하하하</span><span id="aa">하하하</span>
	<span id="aa">하하하</span><span id="aa">하하하</span>
	<hr> inline-block 태그 <hr>
	<span id="bb">하하하</span><span id="bb">하하하</span>
	<span id="bb">하하하</span><span id="bb">하하하</span>

</body>
</html>