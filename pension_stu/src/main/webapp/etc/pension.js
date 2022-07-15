// pension.js

// top.jsp
function view(n) {
	document.getElementsByClassName("sub")[n].style.visibility = "visible";
}
function hide(n) {
	document.getElementsByClassName("sub")[n].style.visibility = "hidden";
}

// member_input.jsp
var k=0;
function userid_check(userid) {
	var chk = new XMLHttpRequest();
	chk.open("get", "userid_check.jsp?userid=" + userid);
	chk.send();

	chk.onreadystatechange = function() {

		if (chk.readyState == 4) {
			// alert(chk.responseText); // 날라가는값 확인
			// 사용가능하면 0, 사용불가능 1
			if (chk.responseText.trim() == "0"){
				document.getElementById("iderr").innerText = "사용 가능한 아이디";
				k=0;
			}	
			else if(chk.responseText.trim() == "1"){
				document.getElementById("iderr").innerText = "사용 불가능한 아이디";			
				k=1;
			}
			
		}
	}
}
function pwd_check() {
	var pwd = document.pkc.pwd.value;
	var pwd2 = document.pkc.pwd2.value;
	if (pwd == pwd2)
		document.getElementById("pwderr").innerText = "비밀번호 맞음";	
	else
		document.getElementById("pwderr").innerText = "비밀번호 틀림";
}

function form_check(my) {

	if (my.userid.value.trim() == "" || my.userid.value.trim() == null) {
		my.userid.focus();
		document.getElementById("iderr").innerText="아이디를 적으시오";
		return false;
	}
	else if(k==1){
		alert("아이디중복입니다");
		return false;
	}	
	else{
		return true;
	}
	
	
}