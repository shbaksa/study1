<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.BoardDao" %>
<%
   BoardDao bdao=new BoardDao();
   bdao.content(request);
%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<style>
   #section {
     width:1100px;
     height:500px;
     margin:auto;
  }
</style>
<c:import url="../top.jsp"/>
  <div id="section">
  <table width="500" align="center">
   <caption> <h2> 게시판 내용 </h2> </caption>
   <tr>
     <td> 제 목 </td>
     <td colspan="3"> ${bdto.title} </td> 
   </tr>
   <tr>
     <td> 작성자 </td>
     <td> ${bdto.userid} </td>
     <td> 조회수 </td>
     <td> ${bdto.readnum} </td>
   </tr>
   <tr height="200">
     <td> 내 용 </td>
     <td> ${bdto.content} </td>
   </tr>
   <tr>
     <td> 작성일 </td>
     <td colspan="3"> ${bdto.writeday} </td>
   </tr>
   <tr>
     <td colspan="4">
       <a href="list.jsp"> 목록 </a>
       <!-- 
           보이는 경우
            - board테이블의 userid값이 guest인 경우
            - board테이블의 userid와 세션의userid가 같은 경우
            
           안보이는 경우
            - board테이블의 userid값이 guest가 아니고
            - board테이블의 userid와 세션의userid가 다른 경우
            
        -->
        <!-- 보이는 경우 -->
        <c:if test="${ (bdto.userid == 'guest') || (bdto.userid == userid) }">
          <a href="update.jsp?id=${bdto.id}"> 수정 </a>
          
          <c:if test="${bdto.userid=='guest' }"> <!-- guest일 경우 삭제 입력폼이 존재 -->
            <a href="javascript:del_form()"> 삭제 </a> 
          </c:if>
          <c:if test="${bdto.userid == userid}">  <!-- 로그인을 한경우 자신이 작성한 글 -->
            <a href="delete.jsp?id=${bdto.id}"> 삭제 </a>
          </c:if>
          
        </c:if>
        
        <c:if test="${ !( (bdto.userid == 'guest') || (bdto.userid == userid) )}">
           
        </c:if>
       
     </td>
   </tr>
   <tr id="del"> <!-- 삭제폼을 가지는 tr -->
     <td colspan="4"> 
       <form method="post" action="delete.jsp">
         <input type="hidden" name="id" value="${bdto.id}">
         <input type="password" name="pwd">
         <input type="submit" value="삭제하기">
       </form>
     </td>
   </tr>
  </table>
  
  <script>
    function del_form()
    {
    	// 삭제폼을 보이게 한다..
    	document.getElementById("del").style.display="table-row";
    }
  </script>
  <style>
    #del {
       display:none;
    }
  </style>
</div>
<c:import url="../bottom.jsp"/>




