<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
	function check(my){
		
		/*  alert(my.check1.value);
		alert(document.getElementsByClassName("box")[0].value);
		alert(document.getElementsByClassName("box")[1].value);
		alert(document.getElementsByClassName("box")[2].value);
		alert(document.getElementsByClassName("box")[3].value);
		alert(document.getElementsByClassName("box")[4].value=0);  */
		
		/* if(my.check1.value==){
			my.check1.value=1;
			alert(my.check1.value);
		}
		else{
			my.check1.value=0;
			alert(my.check1.value);
		}
		 */
		 alert(my.check3.checked);
		 my.check1.value=0;
		 document.getElementsByClassName("box")[2].value=0;
		 alert(my.check2.checked);
		 alert(my.check1.value);
		 //alert(document.getElementsByClassName("box")[2].value)
		 var ck = my.check2.checked;
		
		
			 
		 
	}
	function viewr(my){
		
		
		 if(my.ch1.checked){
			 //document.getElementsByClassName("box")[3].value=0;
			 my.ch1.value=0;
			 alert(my.ch1.value);
			
		 }
		 else if (my.ch1.checked){
			// document.getElementsByClassName("box")[3].value=1;
			 my.ch1.value=1;
			 alert(my.ch1.value);
		 }
	}

</script>
</head>
<body>
	<form name="pkc" action="a.jsp" onsubmit="viewr()">
	<input type="checkbox" class="box" name="check1" value="1">1
	<input type="checkbox" class="box" name="check2">2
	<input type="checkbox" class="box" name="check3">3
	<input type="checkbox" class="box" name="check4">4
	<input type="checkbox" class="box" name="check5" >5
	<input type="button" onclick="check(this.form)" value="확인">
	<input type="submit" value="전송">
	</form>
	<hr>
	
	<form name="chi" action="b.jsp" onsubmit="viewr(this)">
	<input type="checkbox" id="box1" name="ch1"> 1
	<input type="button" onclick="viewr(this.form)" value="확인">
	<input type="submit" value="전송">
	
	</form>
	

</body>
</html>