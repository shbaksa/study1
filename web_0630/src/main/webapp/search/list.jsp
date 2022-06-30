<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   a {
     color:black;
     text-decoration:none;
   }
   a:hover {
      text-decoration:underline;
    }
   
 </style>
</head>
<body> <!-- list.jsp => board1에 있는 내용을 읽어와서 출력하는 문서 -->
<%@page import="java.sql.*" %>
<%
   // DB연결
   Class.forName("com.mysql.jdbc.Driver");
   String db="jdbc:mysql://localhost:3306/first";
   Connection conn=DriverManager.getConnection(db,"root","1234");
	
   request.setCharacterEncoding("utf-8"); // request사용전에 생성
   // request => 사용자가 원하는 페이지값
   int pager;
   if(request.getParameter("pager")==null) 
   {
	   pager=1;
   }
   else
   {
	   pager=Integer.parseInt(request.getParameter("pager"));  
   }
   
   
   // 사용자가 원하는 페이지의 index값 만들기
   int index=(pager-1)*10;
 
   // 쿼리 작성
   // request.getParameter("field")의 값이 1:title, 2:content, 3:name
   // request받기
   int field;
   if(request.getParameter("field")==null) // list를 최초에 읽을때
	   field=0;
   else
       field=Integer.parseInt(request.getParameter("field"));  // 1, 2, 3
   
   String search="";
   if(request.getParameter("search")!=null)
       search=request.getParameter("search");
   
   String inner="";
   switch(field)
   {
      case 0: ; break;
      case 1: inner="where title like '%"+search+"%'"; break;  // where title like '%검색어%'
      case 2: inner="where content like '%"+search+"%'"; break;  // where content like '%검색어%'
      case 3: inner="where name like '%"+search+"%'"; break;  // where name like '%검색어%'
   }
   String sql="select * from board1 "+inner+" order by id desc limit ?,10";
   
   // 심부름꾼 생성
   PreparedStatement pstmt=conn.prepareStatement(sql);
   pstmt.setInt(1, index);
   
   // 쿼리 실행  => ResultSet결과 => 출력
   ResultSet rs=pstmt.executeQuery();
%> 
 <script>
    window.onload=function() // 문서를 읽을때 실행
    {
    	// java소스에 있는 field변수의 값이 0~3이며 이값은 select태그의 value랑 일치
    	//document.pkc.field.value=<%=field%>;
    	document.pkc.field.selectedIndex=<%=field%>;
    	                  // option태그중에 선택된 option태그의 인덱스
    }
 </script>
  <table width="500" border="1" align="center"> 
    <caption> <!-- 제목, 내용, 작성자 --> 
     <form name="pkc" method="post" action="list.jsp">
       <select name="field">   <!-- 사용자가 선택한 필드와 검색단어를 폼태그에 표시 -->
         <option value="0"> 선택 </option>
         <option value="1"> 제목 </option>
         <option value="2"> 내용 </option>
         <option value="3"> 이름 </option>
       </select> 
       <input type="text" name="search" value="<%=search%>">
       <input type="submit" value="검색">
     </form>
    </caption>
    <tr>
      <td> 제 목 </td>
      <td> 작성자 </td>
      <td> 조회수 </td>
      <td> 작성일 </td>
    </tr>
    <%
      while(rs.next())
      {
    %>
    <tr>
      <td> <a href="readnum.jsp?id=<%=rs.getString("id")%>"> <%=rs.getString("title")%> </a> </td>
      <td> <%=rs.getString("name")%> </td>
      <td> <%=rs.getString("readnum")%> </td>
      <td> <%=rs.getString("writeday")%> </td>
    </tr>
    <%
      }
    %>
    <tr>
      <td colspan="4" align="right"> <a href="write.jsp"> 글쓰기 </a> </td>
    </tr>
    <tr>
      <td colspan="4" align="center">
        <!-- 페이징 출력(사용자를 위한 링크) -->
    <%
        // pstart와 pend를 구하기
        int num=pager/10;
        if(pager%10 == 0)
        {
        	num=num-1;  // num--;
        }
        int pstart=num*10+1;
        int pend=pstart+9; // 마지막 그룹에서는 pend값을 총페이지를 계산하여 처리가 필요
                           // 마지막 그룹에서는 pend값을 총페이지값으로 변경
        // 총페이지를 구하기
        sql="select ceil(count(*)/10) as chong from board1 "+inner;
        pstmt=conn.prepareStatement(sql);
        rs=pstmt.executeQuery();
        rs.next();
        int chong=rs.getInt("chong");
        
        if(pend > chong)
        {
        	pend=chong;
        }
    %>
    <!-- 이전페 이지로 이동(1, 10) -->
    <!-- 이전 10페이지 이동(이전 그룹) : 첫그룹에서는 링크 X -->
      <%
        if(pstart==1)
        {
      %>
       <<
      <%
        }
        else
        {
      %> 
       <a href="list.jsp?pager=<%=pstart-1%>"> << </a>
      <%
        }
      %>
    <!-- 이전 1페이지 이동 : 현재페이지가 1페이지이면 링크 X -->
      <%
       if(pager==1)
       {
      %>  
       <
      <%
       }
       else
       {
      %> 
       <a href="list.jsp?pager=<%=pager-1%>"> < </a>
    <% 
       }
      
        String str="";
        for(int i=pstart;i<=pend;i++)
        {
        	if(pager==i)
        	{
        		str="style='color:red;'";
        	}
        	else
        	{
        		str="";
        	}
    %>
           <a <%=str%> href="list.jsp?pager=<%=i%>&search=<%=search%>&field=<%=field%>"> <%=i%> </a>
    <%
        }
    %>
    <!-- 다음페이지로 이동(1, 10) -->
    <!-- 다음 1페이지 이동 : 현재페이지가 마지막페이지면 링크 X -->
     <%
       if(pager == chong)
       {
     %>
       >
     <%
       }
       else
       {
      %>  
       <a href="list.jsp?pager=<%=pager+1%>"> > </a>
      <%
       }
      %>  
       
    <!-- 다음 10페이지 이동 : 마지막 그룹이라면 링크 X-->
      <%
       if(chong == pend)
       {
      %> 
       >>
      <%
       }
       else
       {
      %> 
       <a href="list.jsp?pager=<%=pend+1%>"> >> </a>
      <%
       }
      %> 
      </td>
    </tr>
  </table>
</body>
</html>





