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
 </style>
  <!--
    1. 회원 아이디 조회 
    2. 비밀번호의 일치여부
    3. 필수 입력 (아이디,이름,전화번호)
  -->
 
  <div id="section">
     <table width="400" align="center">
       <caption> <h2> 회원 가입 </h2> </caption>
       <tr>
         <td> 아이디 </td>
         <td> 
            <input type="text" name="userid" onblur="userid_check(this.value)"> <br> 
            <span id="err"></span> 
         </td>
       </tr>
       <tr>
         <td> 이 름 </td>
         <td> <input type="text" name="name"> </td>
       </tr>
       <tr>
         <td> 비밀번호 </td>
         <td> <input type="password" name="pwd"> </td>
       </tr>
       <tr>
         <td> 비밀번호확인 </td>
         <td> <input type="password" name="pwd2"> </td>
       </tr>
       <tr>
         <td> 이메일 </td>
         <td> <input type="text" name="email"> </td>
       </tr>
       <tr>
         <td> 전화번호 </td>
         <td> <input type="text" name="phone"> </td>
       </tr>
       <tr>
         <td colspan="2" align="center"> <input type="submit" valuel="가입하기"> </inptu>
       </tr>
     </table>
  </div>
<c:import url="../bottom.jsp"/>








