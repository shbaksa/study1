<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dao.MemberDao" %>

<%
	MemberDao mdao = new MemberDao();
	mdao.info(request, session);

%>
 <!-- 복사폼.jsp -->    
<c:import url="../top.jsp"/>
<style>
#section{
	width:1100px;
	height:500px;
	margin:auto;
}
#section .btn{
	display:inline-block;
	border:1px solid green;
	width:150px;
	height:25px;
	text-align:center;
	padding-top:5px;
	cursor:pointer;
}

</style>
   	   
   <div id="section">
   
   	<table width="700" align="center">
   	<tr>
    <td>아이디</td>
    <td>${userid}</td>
    </tr>
    <tr>
    <td>이름</td>
    <td>${name}</td>
    </tr>
    <tr>
    <td>전화번호</td>
    <td>${mdto.phone}</td>
    </tr>
    <tr>
    <td>이메일</td>
    <td>${mdto.email}</td>
    </tr>
    <tr>
    <td>가입일</td>
    <td>${mdto.writeday}</td>
    </tr>
    <tr>
    
    <td colspan="2">
    <span class="btn" onclick="location='../member/update.jsp?id=${mdto.id}">회원정보 변경</span>
    <span class="btn" onclick="location='../member/pwd_change.jsp?id=${mdto.id}">비밀번호 변경</span>   
    <span class="btn" onclick="location='../member/member_out.jsp?id=${mdto.id}">회원탈퇴 신청</span>
    </td>
   
    </tr>
   
   
   	
   	
   	
   	
   	
   	</table>
   
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>