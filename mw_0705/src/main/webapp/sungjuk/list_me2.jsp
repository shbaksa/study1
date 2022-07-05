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
		text-align : center;
		
	}
	.su-td-1{
		width : 30px;
	}
	
	
	input[type=text]{
		border : none;
	}
</style>
	<script>
		function view(i,id,name,kor,eng,mat){
			
			var i=i;
			var id=id;
			var n=name;
			var k=kor;
			var e=eng;
			var m=mat;
			var ee = document.getElementById("bu"+id).value;
			var upname,upkor,upeng,upmat;
			
			if(ee == "수정"){
				
				document.getElementsByClassName("chna")[i].innerHTML="<input type='text' name='upname'' size='4' id='ppp"+i+"' placeholder='"+n+"' >";
				document.getElementsByClassName("chko")[i].innerHTML="<input type='text' name='upkor' size='4' id='ooo"+i+"' placeholder='"+k+"' >";
				document.getElementsByClassName("chen")[i].innerHTML="<input type='text' name='upeng' size='4' id='iii"+i+"' placeholder='"+e+"' >";
				document.getElementsByClassName("chma")[i].innerHTML="<input type='text' name='upmat' size='4' id='uuu"+i+"' placeholder='"+m+"' >";
				document.getElementById("bu"+id).value="완료";
			}
			else if(ee == "완료"){
				upname = document.getElementById("ppp"+i).value;
				upkor = document.getElementById("ooo"+i).value;
				upeng = document.getElementById("iii"+i).value;
				upmat = document.getElementById("uuu"+i).value;
				document.getElementsByClassName("chbu")[i].innerHTML="<input type='button' id='yyy' onclick='"+open(id,upname,upkor,upeng,upmat)+"' value='수정완료' >"
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
			
			if(upname == "" )
				alert("이름빈칸");
			else if(upkor == "" )
				alert("국어점수 빈칸");
			else if(upeng == "")
				alert("영어점수 빈칸");
			else if(upmat == "")
				alert("수학점수 빈칸");
			else /* if ( document.getElementById("ppp"+i).value == upname ) */
			location="update_ok_me.jsp?id="+id+"&name="+upname+"&kor="+upkor+"&eng="+upeng+"&mat="+upmat;
		}
		
		function write_move(my){
			
			if(my.write_name.value == ""){
				alert("이름빈칸");
				return false;
			}
			else if(my.write_kor.value == ""){
				alert("국어점수 빈칸");
				return false;
			}
			else if(my.write_eng.value == ""){
				alert("영어점수 빈칸");
				return false;
			}
			else if(my.write_mat.value == ""){
				alert("수학점수 빈칸");
				return false;
			}
			else
				return true;
				
		}
		function deldel(i,id){
			
			 var check = document.getElementsByClassName("checkc")[i].value; 
			
			/* var ch = document.getElementById("checked"+id).values; */
			
			const checkbox = document.getElementById("checked"+id);
			
			const is_checked = checkbox.checked; 
			
			if(is_checked == true){
				
				/* alert(check); */
				location="delete_me.jsp?id="+id; 
			}
			else if (is_checked == false)
				alert("체크박스 체크하세요");
		}
	
	</script>
</head>
<body>
	
	<table width="700" align="center">
	<caption><h1>성적</h1></caption>

	<tr>
	<td></td>
	<td width="150">이름</td>
	<td width="100">국어</td>
	<td width="100">영어</td>
	<td width="100">수학</td>
	<td>총점</td>
	<td>평균</td>
	<td>수정</td>
	<td>삭제</td>
	</tr>
	<%
	
	int i=0;
	while(rs.next()){ %>
	<tr>
	<td>
	<input type="checkbox" name="delcheck" id="checked<%=rs.getInt("id") %>" class="checkc" value="<%=rs.getInt("id") %>">
	</td> 
	<td id="na<%=rs.getInt("id") %>" class="chna"><%=rs.getString("name") %></td>
	<td id="ko<%=rs.getInt("id") %>" class="chko"><%=rs.getInt("kor") %></td>
	<td id="en<%=rs.getInt("id") %>" class="chen"><%=rs.getInt("eng") %></td>
	<td id="ma<%=rs.getInt("id") %>" class="chma"><%=rs.getInt("mat") %></td>
	<td><%=rs.getString("tot") %></td>
	<td><%=rs.getString("avg") %></td>
	<td>
	<input type="button" id="bu<%=rs.getInt("id") %>" class="chbu" onclick="view(<%=i%>,<%=rs.getInt("id")%>,'<%=rs.getString("name") %>',<%=rs.getInt("kor")%>,<%=rs.getInt("eng") %>,<%=rs.getInt("mat") %>)" value="수정">
	</td>
	
	<%-- <td><input type="button" onclick="del_move(<%=rs.getInt("id") %>)" value="삭제"></td> --%>
	<td><input type="button" onclick="deldel(<%=i%>,<%=rs.getInt("id") %>)" value="삭제"></td>
	
	</tr>
	<% i++; } 
	rs.close();
	rs = sd.input();
	%>

	<tr>
	<td colspan="9" align="center"><input type="button" onclick="del()" value="성적입력"></td>
	</tr>
	

	
	


	</table>
	<table id="del" style="visibility:hidden;" align="center" width="700">
	<tr>
	<form metion="post" action="write_ok_me.jsp" onsubmit="return write_move(this)">
	<td><input type="text" size="5" name="write_name" placeholder="이름"></td>
	<td><input type="text" size="5" name="write_kor" placeholder="국어점수"></td>
	<td><input type="text" size="5" name="write_eng" placeholder="영어점수"></td>
	<td><input type="text" size="5" name="write_mat" placeholder="수학점수"></td>
	<td align="center"><input type="submit" value="점수입력"></td>
	</form>
	</tr>
	</table>

</body>
</html>