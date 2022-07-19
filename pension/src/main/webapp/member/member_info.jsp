<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="dao.MemberDao" %>
<%
   MemberDao mdao=new MemberDao();
   mdao.member_info(session,request);
   
   // jsp에 출력할 내용은 request객체영역에 저장을한다..
   // EL표현식으로 접근, JSTL을 사용
%>     
<style>
   #section {
     width:1100px;
     height:400px;
     margin:auto;
  }
  #section table {
     margin-top:100px;
  }
  #section .btn {
     display:inline-block;
     width:120px;
     height:30px;
     padding-top:5px;
     text-align:center;
     border:1px solid purple;
     cursor:pointer;
  }
  #section table tr {
     height:35px;
  }
</style> <!-- member_info.jsp -->

<c:import url="../top.jsp"/>
  <div id="section">
    <!-- 아이디, 이름 , 이메일, 전화번호 보여주기 -->
    <table width="400" align="center">
     <caption> <h2> 회원 정보 </h2> </caption>
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
       <td> ${mdto.email} </td>
     </tr>
     <tr>
       <td> 전화번호 </td>
       <td> ${mdto.phone} </td>
     </tr>
     <tr>
      <td colspan="2">
        <span class="btn" onclick="location='member_update.jsp'"> 정보 수정 </span>
        <span class="btn" onclick="location='pwd_change.jsp'"> 비밀번호 변경 </span>
      </td>
     </tr>
    </table>
  </div>
<c:import url="../bottom.jsp"/>








