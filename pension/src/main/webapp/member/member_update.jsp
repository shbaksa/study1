 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
    
 <c:import url="../top.jsp"/>
 <style>
   #section {
     width:1100px;
     height:500px;
     margin:auto;
   }
   #err , #perr {
     font-size:12px;
   }
 </style>
<%@page import="dao.MemberDao" %> 
<%
    MemberDao mdao=new MemberDao();
    mdao.member_update(session,request);
%>  
  <div id="section">
   <form name="pkc" method="post" action="member_update_ok.jsp">
     <table width="400" align="center">
       <caption> <h2> 회원 가입 </h2> </caption>
       <tr>
         <td> 아이디 </td>
         <td> ${mdto.userid} </td>
       </tr>
       <tr>
         <td> 이 름 </td>
         <td> ${mdto.name} </td>
       </tr>
       <tr>
         <td> 이메일 </td>
         <td> <input type="text" name="email" value="${mdto.email}"> </td>
       </tr>
       <tr>
         <td> 전화번호 </td>
         <td> <input type="text" name="phone" value="${mdto.phone}"> </td>
       </tr>
       <tr>
         <td colspan="2" align="center"> <input type="submit" value="정보변경"> </inptu>
       </tr>
     </table>
    </form>
  </div>
 
<c:import url="../bottom.jsp"/>








