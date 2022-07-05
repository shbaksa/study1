<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="sungjuk.Sungjuk_Daoo" %>
	
	<%
		Sungjuk_Daoo sd = new Sungjuk_Daoo();
		
		ResultSet rs = sd.input();
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table {
		
		border-spacing: 0px;
		border-collapse : collapse;
		padding : 5px;
	}
	tr,td{
		border : 1px solid black;	
		
	}
	.su-td-1{
		width : 30px;
	}
	
	
	input[type=text]{
		border : none;
	}
</style>
	<script>
		function view(i,id){
			
			var i=i;
			var id=id;
			
			var ee = document.getElementById("bu"+id).value;
			var upname,upkor,upeng,upmat;
			
			if(ee == "수정"){
				
				document.getElementsByClassName("chna")[i].innerHTML="<input type='text' name='upname' id='ppp'>";
				document.getElementsByClassName("chko")[i].innerHTML="<input type='text' name='upkor' id='ooo'>";
				document.getElementsByClassName("chen")[i].innerHTML="<input type='text' name='upeng' id='iii'>";
				document.getElementsByClassName("chma")[i].innerHTML="<input type='text' name='upmat' id='uuu'>";
				document.getElementById("bu"+id).value="완료";
			}
			else if(ee == "완료"){
				upname = document.getElementById("ppp").value;
				upkor = document.getElementById("ooo").value;
				upeng = document.getElementById("iii").value;
				upmat = document.getElementById("uuu").value;
				document.getElementsByClassName("chbu")[i].innerHTML="<input type='button' onclick='"+open(id,upname,upkor,upeng,upmat)+"' value='수정완료' >"
				document.getElementById("bu"+id).value="수정";
				
			}
				
			
			
			
		}
		function del_move(id){
			location="delete.jsp?id="+id;
		}
		function del(){
			
			var pepsi = document.getElementById("del").style.visibility;
			
			if( pepsi == "hidden")
				document.getElementById("del").style.visibility="visible";
			else
				document.getElementById("del").style.visibility="hidden";
		}
		function open(id,upname,upkor,upeng,upmat){
			location="update_ok_me.jsp?id="+id+"&name="+upname+"&kor="+upkor+"&eng="+upeng+"&mat="+upmat;
		}
	
	</script>
</head>
<body>
	
	<table width="auto" align="center">
	<caption><h1>성적</h1></caption>
	<tr>
	<td>이름</td>
	<td>국어</td>
	<td>영어</td>
	<td>수학</td>
	<td>총점</td>
	<td>평균</td>
	<td>수정</td>
	<td>삭제</td>
	</tr>
	<%
	int i=0;
	while(rs.next()){ %>
	<tr>
	<td id="na<%=rs.getInt("id") %>" class="chna"><%=rs.getString("name") %></td>
	<td id="ko<%=rs.getInt("id") %>" class="chko"><%=rs.getInt("kor") %></td>
	<td id="en<%=rs.getInt("id") %>" class="chen"><%=rs.getInt("eng") %></td>
	<td id="ma<%=rs.getInt("id") %>" class="chma"><%=rs.getInt("mat") %></td>
	<td><%=rs.getString("tot") %></td>
	<td><%=rs.getString("avg") %></td>
	<td>
	<input type="button" id="bu<%=rs.getInt("id") %>" class="chbu" onclick="view(<%=i%>,<%=rs.getInt("id")%>)" value="수정"></td>
	<td><input type="button" onclick="del_move(<%=rs.getInt("id") %>)" value="삭제"></td>
	</tr>
	<% i++; } %>
	
	<tr>
	<td colspan="8" align="center"><input type="button" onclick="del()" value="성적입력">
	</td>
	<tr id="del" style="visibility:hidden;">
	<form metion="post" action="write_ok_me.jsp" onsubmit="return write_move(this)">
	<td><input type="text" name="write_name" placeholder="이름"></td>
	<td><input type="text" name="write_kor" placeholder="국어점수"></td>
	<td><input type="text" name="write_eng" placeholder="영어점수"></td>
	<td><input type="text" name="write_mat" placeholder="수학점수"></td>
	<td colspan="4" align="center"><input type="submit" value="점수입력"></td>
	</form>
	</tr>
	
	
	
	</table>

</body>
</html>