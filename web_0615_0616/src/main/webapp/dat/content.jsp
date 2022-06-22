<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   //out.print(request.getHeader("referer"));
   if(request.getHeader("referer")==null)
   {
	   response.sendRedirect("list.jsp");
   }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
   function view()
   {
	   document.getElementById("del").style.display="table-row";
   }
  </script>
  <style>
    #del {
      display:none;
    }
  </style>
</head>
<body>
<%@page import="java.sql.*" %>
<%
    // DB연결
    Class.forName("com.mysql.jdbc.Driver");
    String db="jdbc:mysql://localhost:3306/first";
    Connection conn=DriverManager.getConnection(db,"root","1234");
    
    // request
    String id=request.getParameter("id"); // board2테이블의 id값
    
    // 쿼리 생성
    String sql="select * from board2 where id=?";
    
    // 심부름꾼 생성
    PreparedStatement pstmt=conn.prepareStatement(sql);
    pstmt.setString(1, id);
    
    // 쿼리 실행 => ResultSet
    ResultSet rs=pstmt.executeQuery();
    rs.next();
%>    
  <table width="500" border="1" align="center">
    <tr>
      <td> 제 목 </td>
      <td> <%=rs.getString("title")%> </td>
    </tr>
    <tr>
      <td> 이 름 </td>
      <td> <%=rs.getString("name")%> </td>
    </tr>
    <tr>
      <td> 내 용 </td>
      <td> <%=rs.getString("content").replace("\r\n","<br>")%> </td>
    </tr>
    <tr>
      <td> 조회수 </td>
      <td> <%=rs.getString("readnum")%> </td>
    </tr>
    <tr>
      <td> 작성일 </td>
      <td> <%=rs.getString("writeday")%> </td>
    </tr>
    <%
        String area;
        switch(rs.getInt("area"))  // 0~4
        {
            case 0: area="서울"; break;
            case 1: area="경기"; break;
            case 2: area="강원"; break;
            case 3: area="충청"; break;
            case 4: area="전라"; break;
            default: area="???";
        }
    %>
    <tr>
      <td> 지 역 </td>
      <td> <%=area%> </td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <a href="update.jsp?id=<%=rs.getInt("id")%>"> 수정 </a>
        <a href="list.jsp"> 목록 </a>
        <a href="javascript:view()"> 삭제 </a>  <!-- 클릭시 입력폼을 나타나게 하기 -->
      </td>
    </tr>
    <tr id="del">
      <td colspan="2" align="center">
         <form method="post" action="delete.jsp">
           <input type="hidden" name="id" value="<%=id%>">
           비밀번호 <input type="password" name="pwd">
           <input type="submit" value="삭제">
         </form>
      </td>
    </tr> 
  </table> 
  <hr>
  <!-- 댓글관련 -->
  <table width="500" border="0" align="center">
    <tr>
     <form method="post" action="dat_write_ok.jsp">
      <input type="hidden" name="bid" value="<%=id%>"> <!-- 댓글을 달 board2 글의 id -->
      <td> <input type="text" name="name" size="4" placeholder="이 름"> </td>
      <td> <textarea cols="30" rows="2" name="content" placeholder="댓글을 달아 주세요"></textarea> </td>
      <td> <input type="password" name="pwd" size="4" placeholder="비밀번호"> </td>
      <td> <input type="submit" value="댓글달기"> </td>
     </form>
    </tr>
   
   <%
    // dat테이블의 내용을 가져오기
    // 쿼리 생성
    sql="select * from dat where bid=?"; // content에서의 id값을 ?에 전달
    pstmt=conn.prepareStatement(sql);
    pstmt.setString(1,id);
    rs=pstmt.executeQuery();
    
    while(rs.next())  // 댓글 리스트 출력
    {
   %> <!-- 이름을 클릭하면 수정메뉴,  날짜를 클릭하면 삭제로 이동 -->
    <tr> <!-- dat테이블의 내용을 출력 -->
      <td onclick="upform_view(<%=rs.getInt("id")%>,'<%=rs.getString("name")%>','<%=rs.getString("content")%>')"> <%=rs.getString("name")%> </td>
      <td colspan="2"> <%=rs.getString("content")%> </td>
      <td onclick="dat_view(<%=rs.getInt("id")%>)"> <%=rs.getString("writeday")%> </td> <!-- 날짜를 클릭하면 삭제폼이 보이게 -->
    </tr>    <!-- 숨겨진 삭제폼을 보이게 -->
   <%
    }
   %> 
  </table>
   <!-- 수정을 위한 레이어 폼 -->
   <!-- 
     1. 문서를 읽을때 숨겨야 된다..
     2. 이름을 클릭하면 나타나야 된다..
    -->
   <form name="upform" id="upform"  method="post" action="dat_update_ok.jsp">
    <input type="hidden" name="id">
    <input type="hidden" name="bid" value="<%=id%>">
   <table width="500" border="0" align="center">
    <tr>
      <td> <input type="text" name="name" size="4" placeholder="이 름"> </td>
      <td> <textarea cols="30" rows="2" name="content" placeholder="댓글을 달아 주세요"></textarea> </td>
      <td> <input type="password" name="pwd" size="4" placeholder="비밀번호"> </td>
      <td> <input type="submit" value="댓글수정"> </td>
    </tr>
   </table>
   </form>
  <style>
     #upform {
       visibility:hidden;
     }
  </style>
  <script>
    function upform_view(id,name,content) // id가 upform인 요소를 보이게 한다..
    {   // 매개변수로 넘어온 값을 폼의 input태그에 전달
    	document.upform.id.value=id;
        document.upform.name.value=name;
        document.upform.content.value=content;
    	// 폼을 보이게 하기
    	document.getElementById("upform").style.visibility="visible";
    }
  </script>
  
   <!-- 댓글을 삭제 : 쿼리실행전에 비밀번호체크, delete from dat where id=? -->
   <!-- 댓글 삭제를 위한 폼 -->
   <form name="pkc" id="dat_del" method="post" action="dat_delete.jsp">
     <input type="hidden" name="id">
     <!-- board2테이블의 id추가 -->
     <input type="hidden" name="bid" value="<%=id%>">
     <input type="password" name="pwd" placeholder="비밀번호" size="5">
     <input type="submit" value="댓글삭제">
   </form>
   <script>
         
    		 
     function dat_view(id)
     {
    	 document.getElementById("dat_del").style.visibility="visible";
    	 document.pkc.id.value=id;
    	 // 삭제폼을 현재 마우스가 클릭된 위치로 가져오기  event.pageX, event.pageY
    	 document.getElementById("dat_del").style.left=(event.pageX+20)+"px";
    	 document.getElementById("dat_del").style.top=event.pageY+"px";
     }
   </script>
   <style>
     #dat_del {
       visibility:hidden;  /* visible */
       position:absolute;
       border:1px solid red;
       background:white;
     }
   </style>
<%    
    // close()
    pstmt.close();
    conn.close();
%>
</body>
</html>





