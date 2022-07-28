<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="dao.BoardDao" %>
<%
    BoardDao bdao=new BoardDao();
    bdao.list(request);
%>      

<c:import url="../top.jsp"/>
<style>
   #section {
     width:1100px;
     height:500px;
     margin:auto;
  }
</style>
  <div id="section">
    <table width="800" align="center">
      <caption> <h2> 게 시 판 </h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> 작성자 </td>
        <td> 조회수 </td>
        <td> 작성일 </td>
      </tr>
    <c:forEach items="${list}" var="bdto">  
      <tr>
        <td> <a href="readnum.jsp?id=${bdto.id}"> ${bdto.title} </a> </td>
        <td> ${bdto.userid} </td>
        <td> ${bdto.readnum} </td>
        <td> ${bdto.writeday} </td>
      </tr>
    </c:forEach>
      <tr>
       <td colspan="4" align="right"> <a href="write.jsp"> 글쓰기 </a> </td>
      </tr>   
    </table>
  </div>
<c:import url="../bottom.jsp"/>










