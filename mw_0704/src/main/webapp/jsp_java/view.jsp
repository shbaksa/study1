<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mw_0704.Test" %>
    
    <%
    	
    	Test t = new Test();
    	
    	int num = t.rand_num();
    	int[] temp = t.rand_n();
    	
    	String imsi="";
    	for(int i=0;i<temp.length;i++)
    		 imsi=imsi+temp[i]+" ";
    	
    	
    	
    %>
    <script>
	
    function view(){
    	var n = <%=temp[1]%>
    		 document.getElementById("aa").innerText= n +"/";
    	
    }
    </script>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	<!-- view.jsp -->
	
	임의의 값 : <%=num %>
	<input type="button" onclick="view()" value="버튼">
	임의의 값 : <span id="aa"> </span> 
</body>
</html>