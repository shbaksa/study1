<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선수 명단</title>
  <script>
    function check()
    {
       	    	
   		var chk=0;
             	
    	for(i=0; i<document.pkc.pay.length; i++)
        {
    	  if(document.pkc.pay[i].checked) 
    	  {
    			chk=1;
    	  }
    	    	  
        }
    	
    	if(chk == 0)
        {
    			alert("삭제할 선수를 선택하세요.");
    			
        }
    	else
    	{
    		location.href="delete.jsp";
     		document.pkc.submit()
    	}
   	    	
    }         	
   function check3()
   
   {
   	
  		var chk=0;
            	
   	for(i=0; i<document.pkc.pay.length; i++)
       {
   	  if(document.pkc.pay[i].checked) 
   	  {
   			chk=1;
   	  }
   	    	  
       }
   	
   	if(chk == 0)
       {
   			 alert("삭제할 선수를 선택하세요.");
   			
       }
   	else
   	{
   			location.href="update.jsp";
   			document.pkc.submit()
   	}
  	    	
	   
	   
   }
    
    
    
    
    function check2()
    {
       	var option = "width = 500px;, height = 500px; location =center;"
    	var name = "입력"
    	window.open("insert.jsp",name, option);
 	  	document.pkc2.submit()
    }
    
    
   
  </script>
</head>
<body>
<%

		Class.forName("org.mariadb.jdbc.Driver");
		String url = "jdbc:mariadb://localhost:3306/ex1?allowMultiQueries=true";
		Connection conn = DriverManager.getConnection(url,"root","0000");
		
		request.setCharacterEncoding("UTF-8");
		
		//String name = request.getParameter("name");
		//String position = request.getParameter("position");
		//String num = request.getParameter("num");
		
	//	String sql = "insert into baseball(name,position,num) values(?,?,?)";
		
				
		//PreparedStatement pstmt = conn.prepareStatement(sql);
		//pstmt.setString(1,name);
		//pstmt.setString(2,position);
		//pstmt.setString(3,num);
		
		//pstmt.executeUpdate();
		
		
		String sql = "select * from  baseball";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		
%>

<form name="pkc" method="post" >
<table width="400" border="2" style="text-align:center">
<tr>
	<td>  </td>
	<td> 이름 </td>
	<td> 포지션 </td>
	<td> 번호 </td>
</tr>	
<%int userid=1; %>
<% while(rs.next()) {%>
<tr> 
	<td> <input type="checkbox" name="pay" value="<%= userid++ %>" > </td>
	<td > <%=rs.getString("name")%> </td>
	<td > <%=rs.getString("position")%> </td>
	<td>  <%=rs.getString("num")%> </td>
</tr>
<% }
rs.close();
pstmt.close();
conn.close();	

%>
</table>
<input type="button" value="선수 삭제하기" formaction="delete.jsp" onclick="check()">
<p>
<input type="button" value="정보 변경하기" onclick="javascript:form.action=check3()">

</form>
&nbsp;
<form name="pkc2" >
<input type="button" value="선수 등록하기" onclick="check2()">
</form>



</body>
</html>