// pension.js

//----------------- webapp/top.jsp start -----------------
function view(n) {
	document.getElementsByClassName("sub")[n].style.visibility = "visible";
}
function hide(n) {
	document.getElementsByClassName("sub")[n].style.visibility = "hidden";
}
//----------------- webapp/top.jsp end -----------------


//----------------- member/member_input.jsp start -----------------
var member_input_useridchk = 0; // 아이디의 중복체크 여부를 확인하는 변수 0이면 확인X, 1이면 확인하였다.
function userid_check(userid) {

	if (userid.trim() == "") {
		alert("아이디는 빈값을 사용할 수 없습니다");
		member_input_useridchk = 0;
		document.getElementById("iderr").innerText = "";
	}

	else {
		var useridchk = new XMLHttpRequest();
		useridchk.open("get", "userid_check.jsp?userid=" + userid);
		useridchk.send();

		useridchk.onreadystatechange = function() {

			if (useridchk.readyState == 4) {
				//alert(chk.responseText); // 날라가는값 확인
				// 사용가능하면 0, 사용불가능 1
				if (useridchk.responseText.trim() == "0") {
					document.getElementById("iderr").innerText = "사용 가능한 아이디";
					document.getElementById("iderr").style.color = "blue";
					member_input_useridchk = 1;
				} else if (useridchk.responseText.trim() == "1") {
					document.getElementById("iderr").innerText = "사용 불가능한 아이디";
					document.getElementById("iderr").style.color = "red";
					member_input_useridchk = 0;
				}

			}
		}
	}
}
var member_input_pwdchk = 0;
function pwd_check(pwd2) {
	var pwd = document.pkc.pwd.value;

	if (pwd == pwd2) {
		document.getElementById("pwderr").innerText = "비밀번호 맞음";
		document.getElementById("pwderr").style.color = "blue";
		member_input_pwdchk = 1;
	} else {
		document.getElementById("pwderr").innerText = "비밀번호 틀림";
		document.getElementById("pwderr").style.color = "red";
		member_input_pwdchk = 0;
	}
}
function input_form_check(my) {

	// 아이디, 비번, 이름, 전화번호
	if (member_input_useridchk == 0) {
		alert("아이디중복입니다");
		return false;
	} else if (member_input_pwdchk == 0) {
		alert("비밀번호가 체크하세요");
		return false;
	} else if (my.name.value.trim() == "") {
		alert("이름을 적으세오");
		return false;
	} else if (my.phone.value.trim() == "") {
		alert("핸드폰번호를 적으세요");
		return false;
	} else {
		return true;
	}
}


//----------------- member/member_input.jsp end -----------------	

//----------------- member/pwd_change_input.jsp start -----------------
var pwd_change_errchk = 0;
function pwd_change_err(pwd2) {
	var pwd = document.pwd_change_pkc.pwd.value;
	if (pwd == pwd2) {
		document.getElementById("pwd_change_err").innerText = "비밀번호가 맞습니다";
		document.getElementById("pwd_change_err").style.color = "blue";
		pwd_change_errchk = 0;
	}
	else {
		document.getElementById("pwd_change_err").innerText = "비밀번호가 틀렸습니다";
		document.getElementById("pwd_change_err").style.color = "red";
		pwd_change_errchk = 1;
	}
}
function pwd_change_chk() {
	if (pwd_change_errchk == 0)
		return true;
	else {
		document.getElementById("pwd_change_err").innerText = "비밀번호를 확인해주세요";
		return false;
	}

}

//----------------- member/pwd_change_input.jsp end -----------------	

//----------------- member/info_change_input.jsp end -----------------
function info_change_chk(my) {
	
	if (my.email.value.trim() == "") {
		document.getElementById("info_change_err").innerText = "이메일을 입력해주세요";
		document.getElementById("info_change_err").style.color = "red";
		return false;
	}
	else if (my.phone.value.trim() == "") {		
		document.getElementById("info_change_err").innerText = "핸드폰번호를 입력해주세요";
		document.getElementById("info_change_err").style.color = "red";
		return false;
	}
	else
		return true;
}

//----------------- member/info_change_input.jsp end -----------------

//----------------- board/content.jsp start -----------------	
function board_content_del_form() {
		document.getElementById("board_content_delete").style.display = "table-row";
	}	
//----------------- board/content.jsp end -----------------	

//----------------- Gongji/update.jsp start -----------------	


//----------------- Gongji/update.jsp end -----------------	