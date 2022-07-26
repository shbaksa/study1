<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.TourDao" %>    
<%
    TourDao tdao=new TourDao();
    tdao.update(request);
%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     

<c:import url="../top.jsp"/>
<style>
   #section {
     width:1100px;
     height:500px;
    margin:auto;
  }
</style>
<script>
 function del_add(n,my)
 {
	 if(my.checked)
	    document.getElementsByClassName("cimg")[n].style.opacity="0.3";
	 else
		document.getElementsByClassName("cimg")[n].style.opacity="1"; 
 }
 function check(upform)
 {
	 // checkbox가 체크된 그림파일명과 체크가 안된 그림파일명을 각각 저장
	 var chk=document.getElementsByName("chk"); // 요소의 이름을 변수에 전달
	 var len=chk.length; // 체크박스의 길이
	 var del="";  // 삭제할 파일을 저장
	 var str="";  // 삭제하지 않을 파일을 저장
	 for(i=0;i<len;i++)
	 {	 
	     if(chk[i].checked) // 참 => 삭제할 파일
		 {
	    	 del=del+chk[i].value+",";
		 }
	     else   // 거짓 => 삭제하지 않겠다
	     {
	    	 str=str+chk[i].value+",";
	     }	 
		
	 }
	   
	 upform.del.value=del; // 삭제파일 목록
	 upform.str.value=str; // 보존파일 목록
     //alert(del);
     //alert(str);
     return true;
 }
 
 var size=1; // id="outer"안에 있는 type='file'의 갯수 , name을 서로 다르게 하기 위해 사용
 function add_file()
 {
	  size++;
	  var outer=document.getElementById("outer");
	  var inner="<p class='fname'> <input type='file' name='fname"+size+"'> </p>";
	  outer.innerHTML=outer.innerHTML+inner;
	  //alert(inner);
 }
 function del_file()
 {
	  if(size>1)
	  {
	    document.getElementsByClassName("fname")[size-1].remove(); 
	    size--;
	  }
 }
</script>
  <div id="section">
   <form method="post" onsubmit="return check(this)" action="update_ok.jsp" enctype="multipart/form-data">
     <input type="hidden" name="id" value="${tdto.id}">
     <input type="hidden" name="del">
     <input type="hidden" name="str">
    <table width="600" align="center">
      <caption> <h2> 여 행 후 기 작 성</h2> </caption>
      <tr>
        <td> 제 목 </td>
        <td> <input type="text" name="title" size="40" value="${tdto.title}"> </td>
      </tr>
      <tr>
        <td> 내 용 </td>
        <td> <textarea cols="40" rows="6" name="content">${tdto.content}</textarea> </td>
      </tr>
      <tr>
        <td> 사 진 </td>
        <td>
         <c:set var="t" value="0"/>
         <c:forEach items="${tdto.file}" var="img" >
           <img src="img/${img}" width="50" height="50" class="cimg"> 
           <input type="checkbox" onclick="del_add(${t},this)" name="chk" value="${img}">
           <c:set var="t" value="${t+1}"/>
         </c:forEach> <p>
         <span style="color:red;font-size:12px"> 삭제하시려면 체크하세요 </span>
        </td>
      </tr>
      <tr>
        <td> 추 가 </td>
        <td id="outer"> 
           <input type="button" onclick="add_file()" value="추가">
           <input type="button" onclick="del_file()" value="삭제">
           <p class="fname"> <input type="file" name="fname1"> </p> 
        </td>
      </tr>
      <tr>
        <td colspan="2" align="center"> 
          <input type="submit" value="수정">
        </td>
      </tr>
    </table>
   </form>
  </div>
<c:import url="../bottom.jsp"/>







