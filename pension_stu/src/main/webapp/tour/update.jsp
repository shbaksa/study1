<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="dao.TourDao"%>
<%
TourDao tdao = new TourDao();
tdao.update(request);
%>
<!-- tour/update.jsp -->
<c:import url="../top.jsp" />
<script>
function del_add(n,my){
	
	if(my.checked)
		document.getElementsByClassName("cimg")[n].style.opacity="0.3";
	else
		document.getElementsByClassName("cimg")[n].style.opacity="1.0";
}
var size = 1;
function add() {
	
	size++;
	var outer = document.getElementById("outer");
	var inner = "<p class='fname'><input type='file' class='aa' name='fname"+size+"'></p>"
	//document.getElementById("outer").innerHTML=document.getElementById("outer").innerHTML+inner;
	outer.innerHTML = outer.innerHTML + inner;
}
function del() {

	if (size > 1) {
		document.getElementsByClassName("fname")[size - 1].remove();
		size--;
	}
}
function imgUpCheck(upform){
	
	// checkbox가 체크된 그림 파일명과 체크가 안된 그림파일명을 각각 저장
	var imgDel = document.getElementsByName("imgDel");
	var len = imgDel.length; // 체크박스의 길이
	var del = ""; // 삭제할 파일을 저장
	var str = ""; // 삭제하지 않을 파일을 저장
	for(i=0;i<len;i++){
		
	 	if(imgDel[i].checked) // 참 => 삭제할 파일			
			del=del+imgDel[i].value+",";				
		else  // 거짓 => 삭제하지 않겟다			
			str=str+imgDel[i].value+",";  
	 
		/* if(upform.imgDel[i].checked==false)		
			str=str+imgDel[i].value+",";		
		else 		
			del=del+imgDel[i].value+",";  */
		
	}
	
	upform.del.value=del;
	upform.str.value=str;
	
	//alert(del+"del");
	//alert(str+"str");
	return true;
}
</script>


<div id="tour_update_section">

	<form method="post" action="../tour/update_ok.jsp"
		enctype="multipart/form-data" onsubmit="return imgUpCheck(this)">
		<input type="hidden" name="id" value="${tdto.id}">
		<input type="hidden" name="del">
		<input type="hidden" name="str">
		<!-- 파일 업로드할때 form 태그 enctype="multipart/form-data" 써주기 -->

		<table width="700" align="center">
			<caption>
				<h2>여 행 후 기 작 성</h2>
			</caption>
			<tr>
				<td>제 목</td>
				<td><input type="text" name="title" value="${tdto.title}"></td>
			</tr>
			<tr>
				<td height="400">내 용</td>
				<td><textarea rows="6" cols="40" name="content">${tdto.content}</textarea></td>
			</tr>
			<tr>
				<td>사 진</td>

				<td>
				<c:set var="t" value="0"/>
				
				 <c:forEach items="${tdto.temp}" var="img">
				
					<input type="checkbox" onclick="del_add(${t},this)" name="imgDel" value="${img}">
					<img src="../tour/img/${img}" class="cimg" name="imgChk" width="50" height="50">
					
					<c:set var="t" value="${t+1}"/>
					
				</c:forEach><p>
				<span style="color:red;font-size:12px;">삭제하고싶은 사진을 체크하세요</span></td>
				
			<tr>
				<td>파 일</td>
				<td id="outer">
				<input type="button" onclick="add()" value="추가">
				<input type="button" onclick="del()" value="삭제">	
				<p class="fname"><input type="file" name="fname1"></p>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="submit"  value="글수정"></td>
			</tr>
		</table>
	</form>



</div>



<c:import url="../bottom.jsp" />