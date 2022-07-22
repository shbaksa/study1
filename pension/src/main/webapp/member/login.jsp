<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<c:import url="../top.jsp"/>
<style>
   #section {
     width:1100px;
     height:500px;
     margin:auto;
     text-align:center;
  }
  #section input[type=text] {
    margin-top:100px;
    width:300px;
    height:40px;
    border:1px solid purple;
    outline:none;
  }
  #section input[type=password] {
    width:300px;
    height:40px;
    border:1px solid purple;
    outline:none;
  }
  #section input[type=submit] {
    width:300px;
    height:40px;
    border:1px solid purple;
    outline:none;
    background:purple;
    color:white;
    font-size:20px;
  }
</style>
  <div id="section">
    <%
      if(request.getParameter("chk")!=null)
      {
    %>
     <div style="font-size:12px;color:red"> 아이디 혹은 비밀번호를 잘못 입력하셨습니다 </div>
    <%   	  
      }
    %>
    <form method="post" action="login_ok.jsp">
      <input type="text" name="userid" placeholder="아이디" value="channy"> <p>
      <input type="password" name="pwd" placeholder="비밀번호" value="1111"> <p>
      <input type="submit" value="로그인">
    </form>
  </div>
<c:import url="../bottom.jsp"/>