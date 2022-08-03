<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <!-- 복사폼.jsp -->    
<c:import url="../top.jsp"/>
<style>
#section{
	width:1100px;
	height:500px;
	margin:auto;
}

</style>
   	   
   <div id="section">
   <form method="post" action="../gongji/write_ok.jsp">
   <table width="700" align="center">
   <tr>
   <td>제목</td>
   <td><input type="text" name="title"></td>
   </tr>
   <tr>
   <td>내용</td>
   <td><textarea rows="5" cols="60" name="content"></textarea> </td>
   </tr>
   <tr>
   <td><input type="checkbox" name="gubun" value="1">위에 보일 공지</td>
   <td><input type="checkbox" name="gubun" value="2">긴급 공지</td>
   </tr>
   <tr>
   <td colspan="2"><input type="submit" value="글작성"></td>
   </tr>
   
   
   
   
   
   
   </table>
   </form>
   
   
   </div>
   	
   	
   	
<c:import url="../bottom.jsp"/>